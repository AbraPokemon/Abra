class VotesController < ApplicationController
  before_action :get_event, only: [:vote, :unvote]
  respond_to :js

  def vote
    @event.vote_by!(current_user)
  end

  def unvote
    @event.unvote_by!(current_user)
  end

  private
  def get_event
    @event = Event.find(parmas[:event_id])
  end
end
