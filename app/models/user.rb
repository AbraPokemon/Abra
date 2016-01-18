class User < ActiveRecord::Base
  devise :database_authenticatable, :registerable, :confirmable, :omniauthable,
         :recoverable, :rememberable, :trackable, :validatable, :lockable

  has_many :projects
  has_many :fundings
  has_many :events
  has_many :donations, as: :donor

  validates :full_name, :location, presence: true
  validates :full_name, uniqueness: true
end
