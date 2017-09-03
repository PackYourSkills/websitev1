class User < ApplicationRecord
  has_one :crew, dependent: :destroy
  has_one :packer, dependent: :destroy

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable


  ## method to verify role
  def crew?
    self.role == "crew"
  end

end
