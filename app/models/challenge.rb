class Challenge < ApplicationRecord
  has_many :active_challenges, dependent: :destroy
end
