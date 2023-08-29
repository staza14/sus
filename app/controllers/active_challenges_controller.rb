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
      redirect_to dashboard_path
      flash[:notice] = "You've joined the challenge, well done."
    else
      render "challenges/index", status: :unprocessable_entity
      flash.now[:alert] = "Something has gone wrong!"
    end

  end

end
