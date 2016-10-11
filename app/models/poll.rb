class Poll < ApplicationRecord
  has_many :votes, dependent: :destroy, inverse_of: :poll

  def results
    self.votes.select("votes.value, count(*) as vote_count").group(:value)
  end
end
