class UsersController < ApplicationController
  def feed

  if params[:query].present?
    @users = User.search_by_first_name_and_last_name(params[:query])
  else
    @users = User.all
  end

    @entry = Entry.new
    @post = Post.new
  end

  def dashboard
    @challenges = current_user.active_challenges
    @active_challenges = @challenges.where(completed: false)
    @completed_challenges = @challenges.where(completed: true)
    @entry = Entry.new
    @entry_user = current_user.entries
    @food_data = {}
    @entry_user.each { |entry| @food_data.store(entry.created_at.strftime("%Y%m%d"), entry.food_score) }
    @travel_data = {}
    @entry_user.each { |entry| @travel_data.store(entry.created_at.strftime("%Y%m%d"), entry.travel_score) }
    @home_data = {}
    @entry_user.each { |entry| @home_data.store(entry.created_at.strftime("%Y%m%d"), entry.home_score) }
  end

  private
  def users_params
    params.require(:user).permit(:first_name, :last_name)
  end
end
