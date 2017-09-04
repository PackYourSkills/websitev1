class Packer < ApplicationRecord
  belongs_to :user
  has_attachments :profile_pictures, maximum: 2
  has_attachment :cover_picture

end
