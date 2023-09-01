class ChallengesController < ApplicationController
  def index
    @challenges = Challenge.where.not(id: current_user.challenges.map(&:id))
    @feature = Challenge.all.sample
  end

  def show
    @challenge = Challenge.find(params[:id])
    respond_to do |format|
      format.html
      format.js
    end
  end
end
