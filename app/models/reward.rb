class Reward < ActiveRecord::Base
  belongs_to :project

  validates :project, :description, presence: true
  validates :description, length: { maximum: 500 }
end
