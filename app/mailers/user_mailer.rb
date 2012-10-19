class UserMailer < ActionMailer::Base
  default from: "john@gopago.com"

  def welcome_email(user)
    @user = user
    @url = "http://example.com/login"
    mail(:to => user.email, :subject => "Welcome to my Awesome Site!")
  end
end
