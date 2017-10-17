class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  def require_user 
  	if !user_signed_in?
  		flash[:danger] = "You have to log in, first!"
  		redirect_to root_path
  	end
  end


end
