class PollsController < ApplicationController
  before_action :authenticate_user!, except: :index

  def index
    @polls = Poll.all
  end

  def show
    @poll = Poll.find(params[:id])
  end
end
