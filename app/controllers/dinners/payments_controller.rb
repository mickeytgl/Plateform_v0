class Dinners::PaymentsController < ApplicationController
      rescue_from ActiveRecord::RecordInvalid do |exception|
        redirect_to new_dinner_payment_path, alert: "Vous êtes déjà membre de ce dîner"
      end

  def index 
  end
  def show
  
  end

  def new
    @dinner = Dinner.find(params[:dinner_id])
    @payment = Payment.new
  end

  def create
    begin
      @dinner = Dinner.find(params[:dinner_id])
      token = params[:stripeToken]
  
        @guest = Guest.new(
          :is_guest => true,
          :dinner => @dinner,
          :user => current_user
        )
  
      ActiveRecord::Base.transaction do 
    
        @guest.save!
    
         # Charge the user's card:
        charge = Stripe::Charge.create(
        :amount => (@dinner.cost * 100),
        :currency => "eur",
        :description => "Example charge",
        :source => token,
        :capture => false,
        )
  
      end
  
      if @guest.save 
        @dinner.update(:guest => @dinner.guest - 1)
        charge.capture
        redirect_to @dinner, notice: "Bon Appetit! Votre reservation a été fait!"
      else
        redirect_to new_dinner_payment_path, alert: "Vous êtes déjà membre de ce dîner Deuxime"
      end

      
    end
  end

  def destroy 
  end
end
