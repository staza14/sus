class ActiveChallengeDay < ApplicationRecord
  belongs_to :active_challenge
  default_scope { order(created_at: :asc) }

  after_save :check_challenge_completion

  def check_challenge_completion
    active_challenge = self.active_challenge
    days = active_challenge.active_challenge_days
    user = active_challenge.user
    unless days.any? { |day| day.status == false }
      active_challenge.mark_as_completed
      user.add_challenge_points
      # flash[:notice] = "Nice! You've completed #{active_challenge.challenge.name}."
    end
  end
end
