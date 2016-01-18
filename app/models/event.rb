class Event < ActiveRecord::Base
  belongs_to :user

  has_many :donations, as: :donatable
  has_many :votes, as: :votable
  has_many :comments
end
