class IncomingController < ApplicationController

  # http://stackoverflow.com/questions/1177863/how-do-i-ignore-the-authenticity-token-for-specific-actions-in-rails
  skip_before_action :verify_authenticity_token, only: [:create]

  def create
    # Take a look at these in your server logs
    # to get a sense of what you're dealing with.
    puts "INCOMING PARAMS HERE: #{params}"
    
    # You put the message-splitting and business
    # magic here.
    # Find the user by using params[:sender]
    @user = User.find(params[:sender])
    
    # Find the topic by using params[:subject]
    @topic = Topic.find(params[:subject])
    # Assign the url to a variable after retreiving it from params["body-plain"]
    temp_bm = (params["body-plain"])
    
    # Check if user is nil, if so, create and save a new user
    @user.nil? ? (@user = User.new) : (@user = User)
    
    # Check if the topic is nil, if so, create and save a new topic
    @topic.nil? ? (@topic = Topic.new) : (@topic = Topic)
    # Now that you're sure you have a valid user and topic, build and save a new bookmark
    temp_bm = Bookmark.new(@topic)
    #not sure about that syntax
    
    # Assuming all went well.
    head 200
  end
end
