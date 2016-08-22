class Poll < ApplicationRecord
  has_many :votes, dependent: :destroy, inverse_of: :poll
end
