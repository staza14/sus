class ActiveChallengeDaysController < ApplicationController
  def create
  end

  def update
    p params
    @active_challenge_day = ActiveChallengeDay.find(params[:id])
    active_challenge = @active_challenge_day.active_challenge
    if @active_challenge_day.update(active_challenge_day_params)
      if active_challenge.completed
        flash[:notice] = "Nice! You've completed #{active_challenge.challenge.name}."
      end
      respond_to do |format|
        format.html { redirect_to dashboard_path }
        format.json { render json: { message: @active_challenge_day.id } }
      end
    else
      respond_to do |format|
        format.html { redirect_to dashboard_path }
        format.json { render json: { message: "failure" } }
      end
    end
  end

  def active_challenge_day_params
    params.permit(:status, :id, :active_challenge_id)
  end
end
