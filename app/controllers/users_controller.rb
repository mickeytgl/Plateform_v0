class UsersController < ApplicationController
  before_action :set_user, only: [:show]

  def show
  end

  def payment_source
  end

  private 

    def set_user 
    	@user = User.find(params[:id])
    end
end
