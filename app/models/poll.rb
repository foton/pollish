class Poll < ApplicationRecord
  belongs_to :user, inverse_of: :polls

  has_many :questions, dependent: :destroy, inverse_of: :poll
end
