class Project < ActiveRecord::Base
  belongs_to :user
  belongs_to :category
  has_many :rewards
  has_many :comments
  has_one :story

  validates :user, :category, :title, :project_thumbnail_url, presence: true
  validates :title, uniqueness: true
end
