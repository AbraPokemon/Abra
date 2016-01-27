class Notification < ActiveRecord::Base
  belongs_to :event

  scope :real_time, -> {
    where("created_at <= ?", 2.days.from_now).order(created_at: :desc).limit(11)
  }
end
