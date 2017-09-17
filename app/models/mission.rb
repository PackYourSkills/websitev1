class Mission < ApplicationRecord
  belongs_to :crew

  geocoded_by :full_address
  after_validation :geocode, if: :full_address_changed?

  has_attachment :cover_picture
  has_attachment :referent_picture
  has_attachment :host_picture
  has_attachment :hosting_place_picture


  def url_cover
    open_constants
    self.cover_picture.nil? ? @constants["texture_url"][1]  : (cl_image_path self.cover_picture.path)
  end

  def url_referent_picture
    open_constants
    self.referent_picture.nil? ? @constants["texture_url"][2] : (cl_image_path self.referent_picture.path)
  end

  def url_host_picture
    open_constants
    self.host_picture.nil? ? @constants["texture_url"][3] : (cl_image_path self.host_picture.path)
  end

  def url_hosting_place_picture
    open_constants
    self.hosting_place_picture.nil? ? @constants["texture_url"][4] : (cl_image_path self.hosting_place_picture.path)
  end

  def draft?
    self.status == 'draft'
  end

  def online?
    self.status == 'online'
  end

  def suspended
    self.status = 'suspended'
    self.save
  end

  def suspended?
    self.status == 'suspended'
  end

  def cancel
    self.status = 'canceled'
    self.save
    # self.connections.each do |connection|
    #   connection.cancel
    # end
  end

  def canceled?
    self.status == 'canceled'
  end

  def close
    self.status = 'closed'
    self.save
    # self.connections.each do |connection|
    #   if connection.accepted?
    #   elsif connection.draft?
    #     connection.cancel
    #   else
    #     connection.refuse
    #   end
    # end
  end

  def closed?
    self.status == 'closed'
  end

  def validate
    self.status = 'validated'
    self.save
  end

  def validated?
    self.status == 'validated'
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
