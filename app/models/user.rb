class User < ApplicationRecord
  has_one :crew, dependent: :destroy
  has_one :packer, dependent: :destroy
  validates :cgu, acceptance: true, presence: {message: "You need to accept the Terms & Conditions" }
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable,
         :omniauthable, omniauth_providers: [:facebook]



  ## Facebook Autentification
  def self.find_for_facebook_oauth(auth)
    user_params = auth.to_h.slice(:provider, :uid)
    user_params.merge! auth.info.slice(:email, :first_name, :last_name)
    user_params[:token] = auth.credentials.token
    user_params[:token_expiry] = Time.at(auth.credentials.expires_at)

    user = User.where(provider: auth.provider, uid: auth.uid).first
    user ||= User.where(email: auth.info.email).first # User did a regular sign up in the past.

    if user
      user.update(email: user_params['email'],token: user_params[:token],token_expiry: user_params[:token_expiry])
    else
      user = User.new(email: user_params['email'],token: user_params[:token],token_expiry: user_params[:token_expiry])
      user.password = Devise.friendly_token[0,20]  # Fake password for validation
      user.role = "packer"
      user.save
      packer = user.build_packer
      packer.first_name = auth.info.first_name
      packer.last_name = auth.info.last_name
      packer.save
    end
    return user
  end

  ## method to verify role
  def crew?
    self.role == "crew"
  end

end

