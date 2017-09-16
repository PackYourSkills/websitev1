class Mission < ApplicationRecord
  belongs_to :crew

  geocoded_by :full_address
  after_validation :geocode, if: :full_address_changed?

  has_attachment :cover_picture
  has_attachment :referent_picture
  has_attachment :host_picture
  has_attachment :hosting_place_picture

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

  def full_address
    self.address.to_s + ', ' + self.city.to_s + ', ' + self.country.to_s
  end

  def full_address_changed?
    address_changed? || city_changed? || country_changed?
  end
end
