class PackerMailerPreview < ActionMailer::Preview
  def welcome
    user = User.first
    PackerMailer.welcome(user)
  end
end
