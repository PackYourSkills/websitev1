class PackerMailerPreview < ActionMailer::Preview
  def welcome
    packer = Packer.first
    PackerMailer.welcome(packer)
  end
end
