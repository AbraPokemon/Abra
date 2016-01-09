class User < ActiveRecord::Base
  devise :database_authenticatable, :registerable, :confirmable, :omniauthable,
         :recoverable, :rememberable, :trackable, :validatable, :lockable

  validates :full_name, :location, presence: true
  validates :full_name, uniqueness: true
end
