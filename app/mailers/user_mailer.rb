class UserMailer < ActionMailer::Base
  default from: "DeadSouls"

  def welcome_email(user)
    @user = user
    mail(to: @user.email, subject: 'Welcome to DeadSouls')
  end
end
