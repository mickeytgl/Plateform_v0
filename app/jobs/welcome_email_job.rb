#class PaymentNotificationJob < ApplicationJob
#  queue_as :default
#  def perform(user_id)
#    user = User.find(user_id)
#    WelcomeNotification.welcome_user(user).deliver_later
#  end
#end

class PaymentNotificationJob < ApplicationJob
  include Sidekiq::Worker
  sidekiq_options retry: false

  def perform(start_date, end_date)
    puts "Sidekiq worker generating stuff from #{start_date} to #{end_date}"
  end
end