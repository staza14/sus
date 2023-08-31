class ActiveChallengeDaysController < ApplicationController
  def create
  end
  def update
    @active_challenge_day = ActiveChallengeDay.find(params[:id])
    @active_challenge_day.status = true
    @active_challenge_day.save
    head :ok
  end
end
