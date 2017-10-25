class LikesController < ApplicationController
  include Pundit
  after_filter :verify_authorized
  
  def index
  end
  
  def create
    @bookmark = Bookmark.find(params[:bookmark_id])
    @topic = @bookmark.topic
    like = current_user.likes.build(bookmark: @bookmark)
    
    authorize like
    
    if like.save
    # Add code to generate a success flash and redirect to @bookmark
      flash[:notice] = "you LOVE #{@bookmark.url}!"
      redirect_to @bookmark.topic
    else
    # Add code to generate a failure flash and redirect to @bookmark
      flash[:alert] = "hmmm, that didn't work"
      redirect_to @bookmark.topic
    end
  end
    
  def destroy
    # Get the bookmark from the params
    @bookmark = Bookmark.find(params[:bookmark_id])
    @topic = @bookmark.topic
    # Find the current user's like with the ID in the params
    like = current_user.likes.find(params[:id])
    
    authorize like
    
    if like.destroy
      flash[:notice] = "We never liked #{@bookmark.url} either."
      redirect_to @bookmark.topic
    else
    # Flash error and redirect to @bookmark
      flash[:alert] = "Hmmm, that didn't work.  Better try again"
      redirect_to @bookmark.topic
    end
  end
end
