class Mission < ApplicationRecord
  belongs_to :crew

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
end
