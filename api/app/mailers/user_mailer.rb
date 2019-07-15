class UserMailer < ApplicationMailer
  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.user_mailer.password_reset.subject
  #
  def password_reset(user)
    @greeting = 'token: ' + user.reset_digest

    mail to: 'ry.yrupailla@gmail.com'
  end
end
