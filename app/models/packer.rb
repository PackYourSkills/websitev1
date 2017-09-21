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

  def age
    if self.date_of_birth == nil
      nil
    else
      dob = self.date_of_birth
      now = Time.now.utc.to_date
      now.year - dob.year - ((now.month > dob.month || (now.month == dob.month && now.day >= dob.day)) ? 0 : 1)
    end
  end

  def language_level(language)
    case language
    when 'Basic notion'
      1
    when 'Beginner'
      2
    when 'Intermediate'
      3
    when 'Fluent'
      4
    when 'Mother tongue / bilingual'
      5
    else
      0
    end
  end

  def progress
    percent = 0
    percent+=5 if self.first_name.present?
    percent+=5 if self.last_name.present?
    percent+=5 if self.sexe.present?
    percent+=5 if self.nationality.present?
    percent+=5 if self.story.present?
    percent+=5 if self.job.present?
    percent+=5 if self.date_of_birth.present?
    percent+=5 if self.skills.present?
    percent+=5 if self.experience.present?
    percent+=5 if self.level_french.present?
    percent+=5 if self.level_english.present?
    percent+=5 if self.other_languages.present?
    percent+=5 if self.value1.present?
    percent+=5 if self.quote.present?
    percent+=5 if self.quote_author.present?
    percent+=5 if self.address.present?
    percent+=5 if self.phone.present?
    percent+=5 if self.website.present?
    percent+=5 unless self.cover_packer.nil?
    percent+=5 unless self.profile_picture.nil?
    return percent
  end

  private

  def open_constants
    @constants = YAML.load_file(Rails.root.join('config', 'constants.yml'))
  end

  def subscribe_to_newsletter
    SubscribeToNewsletterService.new.call(self.user) if self.newsletter
  end

  def send_welcome_email
    PackerMailer.welcome(self).deliver_now
  end

  def full_address
    self.address.to_s + ', ' + self.city.to_s + ', ' + self.country.to_s
  end

  def full_address_changed?
    address_changed? || city_changed? || country_changed?
  end
end
