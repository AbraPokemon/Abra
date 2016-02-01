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
    attachments.inline['charity.jpg'] = File.read(Rails.root.join('app', 'assets', 'images', 'charity.jpg'))

    mail to: @fd.donor.email
  end

  def event_created 
    @event = Event.first
    attachments.inline['charity.jpg'] = File.read(Rails.root.join('app', 'assets', 'images', 'charity.jpg'))

    mail to: "to@localhost.org"
  end

  def event_completed_survey
    @event = Event.first
    attachments.inline['charity.jpg'] = File.read(Rails.root.join('app', 'assets', 'images', 'charity.jpg'))
    attachments.inline['star.ico'] = File.read(Rails.root.join('app', 'assets', 'images', 'star.ico'))

    mail to: "to@localhost.org"
  end  
end
