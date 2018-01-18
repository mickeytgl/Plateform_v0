class Dinners::PaymentsController < ApplicationController

  def index 
  end
  def show
  
  end

  def new
    @dinner = Dinner.find(params[:dinner_id])
    @payment = Payment.new
  end

  def create
    @dinner = Dinner.find(params[:dinner_id])
    token = params[:stripeToken]

    # Charge the user's card:
    charge = Stripe::Charge.create(
    :amount => (@dinner.cost * 100),
    :currency => "eur",
    :description => "Example charge",
    :source => token,
    )


  end

  def destroy 
  end
end
