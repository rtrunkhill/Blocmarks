class Users::SessionsController < Devise::SessionsController
  # before_action :configure_sign_in_params, only: [:create]

  # GET /resource/sign_in
  # def new
  # @user = User.new
  # end
  
  # POST /resource/sign_in
  # def create
  #   @user = User.new
  #   @user.email = params[:user][:email]
  #   @user.password = params[:user][:password]
  #   @user.password_confirmation = params[:user][:password_confirmation]
    
  #   if @user.save
  #     flash[:notice] = "Welcome to Blocmarks #{@user.email}! Let's change the world."
  #     redirect_to root_path
  #   else
  #     flash.now[:alert] = "What did you do? There was an error creating your account. Please try again."
  #     render :new
  #   end
  # end

  # DELETE /resource/sign_out
  # def destroy
  #   super
  # end

  # protected

  # If you have extra params to permit, append them to the sanitizer.
  # def configure_sign_in_params
  #   devise_parameter_sanitizer.permit(:sign_in, keys: [:attribute])
  # end
end
