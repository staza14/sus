class ActiveChallengeDaysController < ApplicationController
  def create
  end
  def update
    @active_challenge_day = ActiveChallengeDay.find(params[:id])
    @active_challenge_day.status = true
    active_challenge = @active_challenge_day.active_challenge
    days = active_challenge.active_challenge_days
    @active_challenge_day.save
    head :ok
    if !(days.any? { |day| day.status == false })
      active_challenge.completed = true
       if active_challenge.save
        flash[:notice] = "Nice! You've completed #{active_challenge.challenge.name}."
       end
    end
  end
end
