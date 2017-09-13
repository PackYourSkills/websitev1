class PackerMailer < ApplicationMailer

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.packer_mailer.welcome.subject
  #
  def welcome(user)
    @user = user
    mail to: @user.email, subject: "Welcome on board #{@user.packer.first_name}"
  end
end
