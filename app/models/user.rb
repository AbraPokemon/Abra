class User < ActiveRecord::Base
  devise :database_authenticatable, :registerable, :confirmable, :omniauthable,
         :recoverable, :rememberable, :trackable, :validatable, :lockable

  has_many :projects

  validates :full_name, :location, presence: true
  validates :full_name, uniqueness: true
end
