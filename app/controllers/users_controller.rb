class UsersController < ApplicationController
  before_action :set_user, only: [:show]

  def show
  end

  def new_payment_source
  end

  def payment_source
    token = params[:stripeToken]
    
    customer = Stripe::Customer.create({
      email: current_user.email,
      source: token,
    })

    redirect_to root_path, notice: "Hurray, your debit card has been saved"
  end

  private 

    def set_user 
    	@user = User.find(params[:id])
    end
end
