class LikesController < ApplicationController
  def index
  end
  
  def create
    @bookmark = Bookmark.find(params[:bookmark_id])
    like = current_user.likes.build(bookmark: @bookmark)
    
    if like.save
    # Add code to generate a success flash and redirect to @bookmark
      flash[:notice] = "you LOVE this bookmark!"
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
    # Find the current user's like with the ID in the params
    like = current_user.likes.find(params[:id])
    
    if like.destroy
      flash[:notice] = "We never liked \"#{@bookmark.url}\" either."
      redirect_to @bookmark
    else
    # Flash error and redirect to @bookmark
      flash[:alert] = "Hmmm, that didn't work.  Better try again"
      redirect_to @bookmark
    end
  end
end
