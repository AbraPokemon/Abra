class EventsController < ApplicationController
  before_action :authenticate_user!, except: [:index, :show, :near_me]
  before_action :load_categories, only: [:new, :edit]
  before_action :get_event, only: [:edit, :show, :update]

  def index
    keyword = params[:keyword]
    if keyword == "Tại đây"

    else
      @events = Event.where("name LIKE ?", "%#{keyword}%")
    end
  end

  def show
  end

  def new
    @event = Event.new
  end

  def create
    event = Event.new event_params
    event.user = current_user
    thumbnail_file_path = "abra/event/thumbnail/#{Time.now.strftime("%Y/%m/%d/")}#{SecureRandom.hex(13)}#{File.extname(params[:event][:thumbnail_url].original_filename)}"
    obj = S3_BUCKET.object(thumbnail_file_path)
    obj.upload_file(params[:event][:thumbnail_url].tempfile, {
      acl: 'public-read'
    })

    event.thumbnail_url = obj.public_url

    if event.save
      flash[:success] = "Ý tưởng được tạo thành công."
      redirect_to root_path
    else
      render 'new'
    end
  end

  def edit
  end

  def update
    if @event.update_attributes(event_params)
      flash[:success] = "Update event successfully"
      redirect_to @event
    else
      flash[:error] = @event.errors.full_messages.to_sentence
      render 'edit'
    end
  end

  def near_me
    @events = Event.near_me(params[:lat], params[:lon])
    render json: @events
  end

  private
  def event_params
    params.require(:event).permit(:name,
      :category_id, :location, :city, :lat, :lng,
      :start_at, :short_description, :number_of_participant,
      :required_amount, :donation_due_date, :story, :thumbnail_url)
  end

  def get_event
    @event = Event.enable.find(params[:id])
  end

  def load_categories
    @categories = Category.all_enable
  end
end
