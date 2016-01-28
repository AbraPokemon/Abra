class DonationsController < ApplicationController
  before_action :authenticate_user!

  def create
    event = Event.find(params[:donation][:event_id])
    donation = Donation.new(donatable: event, donor: current_user, amount: 1000000)
    if donation.save
      flash[:success] = "Bạn ủng hộ thành công"
      redirect_to event
    else
      flash[:success] = "Bạn ủng hộ không thành công"
      redirect_to event
    end
  end

end
