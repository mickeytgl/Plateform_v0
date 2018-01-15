class PaymentsController < ApplicationController

  def index 
  end
  def show
  end

  def new
    @payment = Payment.new
  end

  def create
    token = params[:stripeToken]

    # Charge the user's card:
    charge = Stripe::Charge.create(
    :amount => 1000,
    :currency => "eur",
    :description => "Example charge",
    :source => token,
    )
    redirect_to root_path
  end

  def destroy 
  end
end
