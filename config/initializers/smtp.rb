ActionMailer::Base.smtp_settings = {
  address: 'smtl.postmarkapp.com',
  port:'25',
  domain: 'packyourskills.com',
  user_name: ENV['POSTMARK_API_TOKEN'],
  passwork: ENV['POSTMARK_API_TOKEN'],
  authentification: :cram_md5,
  enable_starttls_auto: true
}
