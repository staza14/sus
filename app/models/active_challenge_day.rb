class ActiveChallengeDay < ApplicationRecord
  belongs_to :active_challenge
  default_scope { order(created_at: :asc) }
end
