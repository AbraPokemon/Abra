class VotesController < ApplicationController
  before_action :authenticate_user!
  before_action :get_event, only: [:vote, :unvote]
  respond_to :js

  def vote
    @event.vote_by!(current_user)
    respond_to do |format|
      format.js
      format.html
    end
  end

  def unvote
    @event.unvote_by!(current_user)
  end

  private
  def get_event
    @event = Event.find(params[:event_id])
  end
end
