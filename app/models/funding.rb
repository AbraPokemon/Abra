class Funding < ActiveRecord::Base
  belongs_to :project
  belongs_to :user
  belongs_to :reward
end
