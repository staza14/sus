class ActiveChallengeDaysController < ApplicationController
  def create
  end

  def update
    p params
    @active_challenge_day = ActiveChallengeDay.find(params[:id])
    if params[:status] == "false"
      @active_challenge_day.status = false
    else
      @active_challenge_day.status = true
    end

    active_challenge = @active_challenge_day.active_challenge
    days = active_challenge.active_challenge_days

    if days.all? { |day| day.status == true }
      active_challenge.completed = true
      current_user.overall_score = current_user.overall_score + 20
      current_user.save
       if active_challenge.save
        flash[:notice] = "Nice! You've completed #{active_challenge.challenge.name}."
       end
    end

    if @active_challenge_day.save
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
    params.require(:active_challenge_day).permit(:status)
  end
end
