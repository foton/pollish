class ResultsController < ApplicationController
  before_action :authenticate_user!

  def index
    @poll = Poll.includes(:votes).find(params[:poll_id])
  end
end
