class DonationsController < ApplicationController
  before_action :authenticate_user!

  def create
    event = Event.find(params[:donation][:event_id])
    donation = Donation.new(donatable: event, donor: current_user, amount: params[:donation][:amouth])
    if donation.save
      SendDonationMailWorker.perform_async(donation.id)
      flash[:success] = "Bạn ủng hộ thành công"
      redirect_to event
    else
      flash[:success] = "Bạn ủng hộ không thành công"
      redirect_to event
    end
  end

end
