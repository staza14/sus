class ActiveChallengesController < ApplicationController

  def create
    @active_challenge = ActiveChallenge.new
    challenge = Challenge.find(params[:challenge_id])
    @active_challenge.challenge = challenge
    @active_challenge.user = current_user

    challenge.duration.times do |i|
      ActiveChallengeDay.create(active_challenge: @active_challenge, day: i+1)
    end

    if @active_challenge.save
      redirect_to challenges_path
      flash[:notice] = "You've joined #{@active_challenge.challenge.name}, well done."
    else
      render "challenges/index", status: :unprocessable_entity
      flash.now[:alert] = "Something has gone wrong!"
    end

  end

  def destroy
    @active_challenge = ActiveChallenge.find(params[:id])
    if @active_challenge.destroy
      redirect_to dashboard_path
    else
      redirect_to
    end
  end

  def calculate_completion
    challenge = ActiveChallenge.current_user
    @percentage = challenge.active_challenge_days.where(status: true).count

  end
end
