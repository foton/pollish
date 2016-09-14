class Poll < ApplicationRecord
  has_many :votes, dependent: :destroy, inverse_of: :poll

  def results
    self.votes.select("votes.value, count(votes.*) as vote_count").group(:value)
  end
end
