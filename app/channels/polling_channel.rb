class PollingChannel < ApplicationCable::Channel
  def subscribed
    poll = Poll.where(code: params[:code]).first
    stream_for poll
  end

  # def unsubscribed
  #   # current_user.disappear
  # end

  # def appear(data)
  #   # current_user.appear on: data['appearing_on']
  # end

  # def away
  #   # current_user.away
  # end
end
