class PollingChannel < ApplicationCable::Channel
  def subscribed
    poll = Poll.find_by(name: params[:poll])
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
