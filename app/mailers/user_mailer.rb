class UserMailer < ActionMailer::Base
  default from: "john@gopago.com"

  def welcome(user)
    mail(from: 'jfigueir33@gmail.com', to: user.email, 
         subject: 'Welcome Friend!')
  end
end
