class UserMailer < ActionMailer::Base
  default from: "DeadSouls"

  def welcome_email(user)
    @user = user
    mail(to: @user.email, subject: 'Welcome to DeadSouls')
  end

  def password_reset(user)
    @user = user
    mail :to => user.email, :subject => 'Password Reset'
  end
end
