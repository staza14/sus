class ActiveChallenge < ApplicationRecord
  belongs_to :user
  belongs_to :challenge
  has_many :active_challenge_days, dependent: :destroy
end
