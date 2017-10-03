class Connection < ApplicationRecord
  belongs_to :mission
  belongs_to :packer

  validates :motivation, presence: true
  has_attachments :documents, maximum: 3

  def draft?
    self.status == 'draft'
  end

  def online?
    self.status == 'online'
  end

  def put_draft
    self.status = 'draft'
    self.save
  end

  def put_for_admin_validation
    self.status = 'for_admin_validation'
    self.save
  end

  def put_online
    self.status = 'online'
    self.save
  end

  def suspended?
    self.status == 'suspended'
  end

  def accept
    self.status = 'accepted'
    self.save
  end

  def accepted?
    self.status == 'accepted'
  end

  def refuse
    self.status = 'refused'
    self.save
  end

  def refused?
    self.status == 'refused'
  end

  def cancel
    self.status = 'canceled'
    self.save
  end

  def canceled?
    self.status == 'canceled'
  end

  def confirm
    self.status = 'confirmed'
    self.save
    self.mission.validate
  end

  def confirmed?
    self.status == 'confirmed'
  end

end
