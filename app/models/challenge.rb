class Challenge < ApplicationRecord
  has_many :active_challenges, dependent: :destroy
  has_many :users, through: :active_challenges
end
