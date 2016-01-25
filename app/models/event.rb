class Event < ActiveRecord::Base
  belongs_to :user
  belongs_to :category

  has_many :donations, as: :donatable
  has_many :votes, as: :votable
  has_many :comments
  has_many :participations
  has_many :participants, through: :participations, source: :event
end
