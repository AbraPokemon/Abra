class HomeController < ApplicationController
  def index
    @events = Event.all
    @hotEvent = Event.first
  end
end
