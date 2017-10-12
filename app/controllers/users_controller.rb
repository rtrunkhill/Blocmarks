class UsersController < ApplicationController
  # def index
  # end

  # def show
  # end

  def new
    @user = User.new
  end

  def create
    @user = User.new
    @user.name = params[:user][:name]
    @user.email = params[:user][:email]
    @user.password = params[:user][:password]
    @user.password_confirmation = params[:user][:password_confirmation]
    
    if @user.save
      flash[:notice] = "Blocmarks will change your life; Welcome!"
      redirect_to root_path
    else
      flash[:notice] = "Well, this is awkward, It didn't work.  Try again?"
      render :new
    end
  end

  # def edit
  # end

  # def update
  # end

  # def destroy
  # end
end
