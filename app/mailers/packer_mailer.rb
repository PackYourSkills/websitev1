class PackerMailer < ApplicationMailer

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.packer_mailer.welcome.subject
  #
  def welcome(packer)
    @packer = packer
    mail to: @packer.user.email, subject: "Welcome on board #{@packer.first_name}"
  end
end
