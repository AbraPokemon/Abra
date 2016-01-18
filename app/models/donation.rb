class Donation < ActiveRecord::Base
  belongs_to :donatable, polymorphic: true
  belongs_to :donor, polymorphic: true
end
