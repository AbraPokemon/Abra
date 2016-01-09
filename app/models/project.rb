class Project < ActiveRecord::Base
  belongs_to :user
  belongs_to :category

  validates :user, :category, :title, :project_thumbnail_url, presence: true
  validates :title, uniqueness: true
end
