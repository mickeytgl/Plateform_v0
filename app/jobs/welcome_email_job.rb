

#class WelcomeEmailJob < ApplicationJob
#  queue_as :default

#  def perform(user_id)
#    user = User.find(user_id)
#    WelcomeNotification.welcome_user(user).deliver_later
#  end
#end
