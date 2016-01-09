class Story < ActiveRecord::Base
  belongs_to :project

  validates :project_video_url, :risk_challenges, :description, :project, presence: true
end
