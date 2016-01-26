class HomeController < ApplicationController
  def index
    @events = Event.featured.limit(6).includes(:donations)
    @hotEvent = Event.enable.first
  end
end
