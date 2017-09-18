class Packer < ApplicationRecord
 ###### require_relative '../services/'

  belongs_to :user
  has_many :connections, dependent: :destroy

  has_attachment :profile_picture
  has_attachment :cover_packer

  after_create :send_welcome_email

  after_create :subscribe_to_newsletter
  after_update :subscribe_to_newsletter

  validates :website, :allow_blank => true, format: { :with => /((http|ftp)s?:\/\/)?([a-zA-Z0-9<>\.,!@#$%^:;&*()\-_+=]+:[a-zA-Z0-9<>\.,!@#$%^;:&*()\-_+=]+\@)?([a-zA-Z0-9\-\_]+(\/|\.)){2,}[:a-zA-Z0-9\#\?\=\_\.\-\/]*/i, message: "it has to be an url" }
  validates :cv_link, :allow_blank => true, format: { :with => /((http|ftp)s?:\/\/)?([a-zA-Z0-9<>\.,!@#$%^:;&*()\-_+=]+:[a-zA-Z0-9<>\.,!@#$%^;:&*()\-_+=]+\@)?([a-zA-Z0-9\-\_]+(\/|\.)){2,}[:a-zA-Z0-9\#\?\=\_\.\-\/]*/i, message: "it has to be an url" }
  #validates :youtube_link, :allow_blank => true, format: { :with => /(?:https?:\/\/)?(?:(?:(?:www\.?)?youtube\.com(?:\/(?:(?:watch\?.*?(v=[^&\s]+).*)|(?:v(\/.*))|(channel\/.+)|(?:user\/(.+))|(?:results\?(search_query=.+))))?)|(?:youtu\.be(\/.*)?))/i, message: "it has to be a youtube link" }

  geocoded_by :full_address
  after_validation :geocode, if: :full_address_changed?

  def url_cover
    open_constants
    self.cover_packer.nil? ? @constants["img_placeholder_url"][0] : self.cover_packer.path
  end

  def url_profile_picture
    open_constants
    self.profile_picture.nil? ? @constants["img_placeholder_url"][3] : self.profile_picture.path
  end

  private

  def open_constants
    @constants = YAML.load_file(Rails.root.join('config', 'constants.yml'))
  end

  def subscribe_to_newsletter
    SubscribeToNewsletterService.new.call(self.user) if self.newsletter
  end

  def send_welcome_email
    PackerMailer.welcome(self.user).deliver_now
  end

  def full_address
    self.address.to_s + ', ' + self.city.to_s + ', ' + self.country.to_s
  end

  def full_address_changed?
    address_changed? || city_changed? || country_changed?
  end
end
