class ResultsController < ApplicationController
  before_action :authenticate_user!

  def index
    @poll = Poll.find(params[:poll_id])
    PollingChannel.broadcast_to(@poll, foo: "bar")
  end
end
