class Vote < ApplicationRecord
  belongs_to :poll, inverse_of: :votes
end
