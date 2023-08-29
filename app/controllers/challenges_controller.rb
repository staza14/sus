class ChallengesController < ApplicationController
  def index
    @challenges = Challenge.all
  end

  def show
    @challenge = Challenge.find(params[:id])
    respond_to do |format|
      format.html
      format.js
    end
  end
end
