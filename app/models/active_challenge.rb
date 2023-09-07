class ActiveChallenge < ApplicationRecord
  belongs_to :user
  belongs_to :challenge
  has_many :active_challenge_days, dependent: :destroy


  def calculate_completion
    days_overall = self.active_challenge_days.count
    days_completed = self.active_challenge_days.where(status: true).count
    completion = (days_completed.to_f / days_overall * 100).round
  end

  def mark_as_completed
    self.update(completed: true)
  end
end
