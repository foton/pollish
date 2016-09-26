class PollingChannel < ApplicationCable::Channel
  def subscribed
    poll = Poll.where(code: params[:code]).first
    stream_for poll
  end
end
