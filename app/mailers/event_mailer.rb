class EventMailer < ApplicationMailer

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.event_mailer.donate_successful.subject
  #
  def donate_successful(donation)
    # hard-coded for first donation
    @fd = donation
    @recommendedEvent = Event.limit(5)

    mail to: @fd.donor.email
  end

  def event_created
    @event = Event.first

    mail to: "to@localhost.org"
  end

  def event_completed_survey(event)
    @event = event
    mail to: "nvh0412@gmail.com"
  end

end
