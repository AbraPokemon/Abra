class Comment < ActiveRecord::Base
  belongs_to :user
  belongs_to :project

  validates :user, :project, :body, presence: true
  validates :rating, inclusion: 1..5
  validates :body, length: { maximum: 500 }
end
