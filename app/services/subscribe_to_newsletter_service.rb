# app/services/subscribe_to_newsletter_service.rb
require "gibbon"

class SubscribeToNewsletterService
  def initialize
    @gibbon = Gibbon::Request.new(api_key: ENV['MAILCHIMP_API_KEY'])
    @list_id = ENV['MAILCHIMP_NEWSLETTER_LIST_ID']
  end

  def call(user)
    @gibbon.lists(@list_id).members.create(
      body: {
        email_address: user.email,
        status: "subscribed",
        double_optin: false,
        # merge_fields: {
        #   FNAME: @user.first_name,
        #   LNAME: @user.last_name
        # }
      }
    )
  end
end
