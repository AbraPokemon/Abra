class User < ActiveRecord::Base
  devise :database_authenticatable, :registerable, :confirmable, :omniauthable,
         :recoverable, :rememberable, :trackable, :validatable, :lockable, :async

  has_many :events
  has_many :donations, as: :donor
  has_many :votes, as: :voter
  has_many :comments

  validates :full_name, :location, presence: true
  validates :full_name, uniqueness: true
end
