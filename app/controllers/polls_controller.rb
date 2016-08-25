class PollsController < ApplicationController
  def index
    @polls = Poll.all
  end

  def show
    @poll = Poll.find(params[:id])
    @vote = @poll.votes.build

    if session[@poll.code].present?
      redirect_to polls_path, notice: "Don't ruin the fun, You've already voted."
    end
  end

end
