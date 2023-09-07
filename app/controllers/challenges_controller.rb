class ChallengesController < ApplicationController
  def index
    @challenges = Challenge.where.not(id: current_user.challenges.map(&:id))
    @feature = Challenge.find_by(name: "Marvelous Mitochondria")
    @challenges_food = Challenge.where(category: "Food")
    @challenges_home = Challenge.where(category: "Home")
    @challenges_transport = Challenge.where(category: "Transport")
  end

  def show
    @challenge = Challenge.find(params[:id])
    respond_to do |format|
      format.html
      format.js
    end
  end
end
