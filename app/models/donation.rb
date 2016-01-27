class Donation < ActiveRecord::Base
  after_save :notify_system

  belongs_to :donatable, polymorphic: true
  belongs_to :donor, polymorphic: true

  private
  def notify_system
    donatable.notifications.create(message: "được ủng hộ <strong>#{ActionController::Base.helpers.number_to_currency(amount, format: "%n VNĐ")}</strong> để <a href='#''>thực hiện ý tưởng</a>")
  end
end
