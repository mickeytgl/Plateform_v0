class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_action :configure_permitted_parameters, if: :devise_controller?

  def require_user 
  	if !user_signed_in?
  		flash[:danger] = "You have to log in, first!"
  		redirect_to root_path
  	end
  end

protected  
  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up) { |u| u.permit(:name, :username, :email, :password,
      :password_confirmation, :remember_me, :avatar, :avatar_cache, :remove_avatar) }
    devise_parameter_sanitizer.permit(:account_update) { |u| u.permit(:name, :username, :email, :password,
      :password_confirmation, :current_password, :avatar, :avatar_cache, :remove_avatar) }
  end


end
