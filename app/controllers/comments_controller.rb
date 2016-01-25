class CommentsController < ApplicationController
  before_action :authenticate_user!
  before_action :get_event, only: [:create]
  respond_to :html, :json, :js

  def show
  end

  def create
    @event.comments.build(comment_params.merge(user: current_user))
    flash[:error] = t("notify.error_create", class: "Event") unless @event.save
  end

  private
  def get_event
    @event = Event.find(params[:event_id])
  end

  def comment_params
    params.require(:comment).permit(:body);
  end
end
