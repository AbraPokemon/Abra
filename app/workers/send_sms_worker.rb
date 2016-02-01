class SendSmsWorker
  include Sidekiq::Worker

  def perform(event_id)
    event = Event.find_by_id(event_id)
    event.send_sms
  end
end
