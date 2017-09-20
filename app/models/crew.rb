class Crew < ApplicationRecord
  belongs_to :user
  has_many :missions, dependent: :destroy

  validates :website, :allow_blank => true, format: { :with => /((http|ftp)s?:\/\/)?([a-zA-Z0-9<>\.,!@#$%^:;&*()\-_+=]+:[a-zA-Z0-9<>\.,!@#$%^;:&*()\-_+=]+\@)?([a-zA-Z0-9\-\_]+(\/|\.)){2,}[:a-zA-Z0-9\#\?\=\_\.\-\/]*/i, message: "it has to be an url" }

  has_attachment :logo
  has_attachment :team_picture
  has_attachment :working_place_picture


  geocoded_by :full_address
  after_validation :geocode, if: :full_address_changed?

  def url_logo
    open_constants
    self.logo.nil? ? @constants["img_placeholder_url"][4]  : self.logo.path
  end

  def url_team_picture
    open_constants
    self.team_picture.nil? ? @constants["img_placeholder_url"][5]  : self.team_picture.path
  end

  def url_working_place_picture
    open_constants
    self.working_place_picture.nil? ? @constants["img_placeholder_url"][6]  : self.working_place_picture.path
  end

  private

  def open_constants
    @constants = YAML.load_file(Rails.root.join('config', 'constants.yml'))
  end

  def full_address
    self.address.to_s + ', ' + self.city.to_s + ', ' + self.country.to_s
  end

  def full_address_changed?
    address_changed? || city_changed? || country_changed?
  end
end
