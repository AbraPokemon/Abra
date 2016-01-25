class EventsController < ApplicationController
  before_action :get_event, only: [:show, :edit]

  def index
  end

  def show
  end

  def new
  end

  def create
    @event = Event.new event_params
    @event.user = current_user
    thumbnail_file_path = 'abra/event/thumbnail/' + Time.now.strftime("%Y/%m/%d/") + SecureRandom.hex(13) + File.extname(params[:event][:thumbnail].original_filename)
    obj = S3_BUCKET.object(thumbnail_file_path)
    obj.upload_file(params[:event][:thumbnail].tempfile, {
      acl: 'public-read'
    })

    @event.thumbnail = obj.public_url

    if @event.save
      redirect_to events_path
    else
      render 'new'
    end
  end

  def edit
    @event = Event.find(params[:id])
    render 'edit'
  end

  private
  def get_event
    @event = Event.find(params[:id])
  end

  def event_params
    params.require(:event).permit(:name, :location, :start_at, :short_description, :number_of_participant, :required_amount, :donation_due_date, :story)
  end
end
