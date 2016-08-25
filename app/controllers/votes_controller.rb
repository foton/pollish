class VotesController < ApplicationController
  def create
    @poll = Poll.find(params[:poll_id])
    @vote = @poll.votes.build(vote_params)

    if @vote.save
      session[@poll.code] = true
      redirect_to polls_path, notice: message
    else
      flash.now[:alert] = "Are you shure you pressed the button correctly?"
      render partial: "polls/show"
    end
  end

  private

  def vote_params
    params.require(:vote).permit(:value)
  end

  def message
    [
      "Thanks for your vote!",
      "You just rocked the vote! \m/ \m/",
      "It takes a trained hand to cast a vote like that.",
      "Well, it's too late now.",
      "You know there's nothing secret about voting, right? They're watching you.",
      "I hate you.",
      "Die in fire.",
    ].sample
  end
end
