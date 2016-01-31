class SendDonationMailWorker
  include Sidekiq::Worker

  def perform(donation_id)
    donation = Donation.find_by_id(donation_id)
    EventMailer.donate_successful(donation).deliver
  end
end
