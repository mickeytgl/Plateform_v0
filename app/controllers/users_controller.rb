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

    payment = PaymentSource.create(
      user:           current_user,
      card_last4:     params[:card_last4],
      card_exp_month: params[:card_exp_month],
      card_exp_year:  params[:card_exp_year],
      card_brand:     params[:card_brand]
    )

    redirect_to root_path, notice: "Hurray, your debit card has been saved"
  end

  private 

    def set_user 
    	@user = User.find(params[:id])
    end
end
