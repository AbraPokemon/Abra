class HomeController < ApplicationController
  def index
    @events = Event.featured.limit(6).includes(:donations)
    @hotEvent = Event.enable.first
    @realtime_notifications = Notification.real_time
  end
end
