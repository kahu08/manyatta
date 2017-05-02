class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  has_attached_file :avatar, styles: { medium: "300x300>", thumb: "30x30#", large: "500x500>"}
  validates_attachment_content_type :avatar, content_type: /\Aimage\/.*\z/
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable,
        #  set all auth providers by callback defined in callbacks_controlletr.rb
         :omniauthable, omniauth_providers: [:google_oauth2, :facebook,]
  has_many :houses, dependent: :destroy
  has_many :reviews, dependent: :destroy
  has_many :bookings, dependent: :destroy


# gather your necessary fields from provider to use it on current_user
  def self.from_omniauth(auth)
      where(provider: auth.provider, uid: auth.uid).first_or_create do |user|
        user.provider = auth.provider
        user.uid = auth.uid
        user.name = auth.info.name
        user.email = auth.info.email
        # user.image = auth.info.image
        user.password = Devise.friendly_token[0,20]
      end
  end
end
