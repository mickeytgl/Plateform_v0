class Dinners::PaymentsController < ApplicationController
      rescue_from ActiveRecord::RecordInvalid do |exception|
        redirect_to new_dinner_payment_path, alert: "You're already have a reservation"
      end
      before_action :authenticate_user!

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
        )
  
      end
  
      if @guest.save 
        @dinner.update(:guest => @dinner.guest - 1)
        WelcomeEmailJob.perform_async("07/07/1993", "23/03/2018")
        redirect_to @dinner, notice: "Bon Appetit! Your reservation has been made! And background worker successful"
      else
        redirect_to new_dinner_payment_path, alert: "You already have a reservation"
      end

      
    end
  end

  def destroy 
  end
end
