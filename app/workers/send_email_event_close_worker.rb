class SendEmailEventCloseWorker
  include Sidekiq::Worker

  def perform(event_id)
    event = Event.find_by_id(event_id)
    EventMailer.event_completed_survey(event).deliver
  end
end
