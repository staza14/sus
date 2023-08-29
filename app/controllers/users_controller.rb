class UsersController < ApplicationController

  def feed
    @entry = Entry.new
  end

  def dashboard
    @challenges = current_user.active_challenges
    @active_challenges = @challenges.where(completed: false)
    @completed_challenges = @challenges.where(completed: true)
  end
end
