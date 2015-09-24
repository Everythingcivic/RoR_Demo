class Usermailer < ApplicationMailer
default from: 'khadija.space0@gmail.com'
 
  def welcome_email(user)
    @user = user
    @url  = 'http://gmail.com'
    mail(to: @user.email, subject: 'Welcome to My Awesome Site')
  end
end
