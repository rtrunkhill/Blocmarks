class BookmarksController < ApplicationController
  def show
     @bookmark = Bookmark.find(params[:id])
  end

  def new
    @topic = Topic.find(params[:topic_id])
    @bookmark = Bookmark.new
  end

  def create
    @topic = Topic.find(params[:topic_id])
    @bookmark = Bookmark.new
    @bookmark.url = params[:bookmark][:url]
    @bookmark.topic = @topic
    
    if @bookmark.save
      redirect_to @topic, notice: "Bookmark was saved successfully."
    else
      flash.now[:alert] = "Error creating bookmark. Please try again."
      render :new
    end
  end

  def edit
    @bookmark = Bookmark.find(params[:id])
  end

  def update
    @bookmark = Bookmark.find(params[:id])
    
    
    if @bookmark.save
      flash[:notice] = "Bookmark was updated."
      redirect_to @topic
    else
      flash.now[:alert] = "Error saving bookmark. Please try again."
      render :edit
    end
  end

  def destroy
    @bookmark = Bookmark.find(params[:id])
    
    if @bookmark.destroy
      flash[:notice] = "\"#{@bookmark.url}\" was deleted successfully."
      redirect_to action: :index
    else
      flash.now[:alert] = "There was an error deleting the bookmark."
      render :show
    end
  end
end
