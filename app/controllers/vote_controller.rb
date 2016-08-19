class VoteController < ApplicationController
  def show
    @poll = Poll.find(params[:poll_id])
    PollingChannel.broadcast_to(@poll, foo: "bar")
  end

  def create
    poll = Poll.find(params[:poll_id])
    vote = poll.votes.create(value: vote_params)

    if vote.save
    else
    end
  end
end
