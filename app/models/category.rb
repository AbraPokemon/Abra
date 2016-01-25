class Category < ActiveRecord::Base
  has_many :events

  def self.all_enable
    where(enable: true)
  end
end
