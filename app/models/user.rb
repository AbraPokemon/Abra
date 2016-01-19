class User < ActiveRecord::Base
  devise :database_authenticatable, :registerable, :confirmable, :omniauthable,
         :recoverable, :rememberable, :trackable, :validatable, :lockable, :async,
         omniauth_providers: [:facebook]

  has_many :events
  has_many :donations, as: :donor
  has_many :votes, as: :voter
  has_many :comments

  def self.from_omniauth(auth)
    where(provider: auth.provider, uid: auth.uid).first_or_initialize do |user|
      user.email = auth.info.email
      user.password = Devise.friendly_token[0,20]
      user.full_name = auth.info.name
      user.avatar_url = auth.info.image
    end
  end
end
