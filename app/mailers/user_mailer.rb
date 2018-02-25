class UserMailer < Devise::Mailer
  helper :application 
  include Devise::Controllers::UrlHelpers
  default template_path: 'devise/mailer'

  def welcome_email(user)
    @user = user
    @url = 'http://example.com/login'
    mail(to: @user.email, subject: 'Welcome to Plateform!')
  end
end
