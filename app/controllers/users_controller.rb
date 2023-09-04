require 'date'
class UsersController < ApplicationController
  def feed
    @user = current_user
    @today = Date.today.mjd
    @my_posts = current_user.posts
    @friends = current_user.friends
    @friends_posts = current_user.friends.map(&:posts).flatten
    @all = (@my_posts + @friends_posts).sort_by { |a| a.created_at }
    if params[:query].present?
      @user = User.find_by(email:params[:query])
    end

    respond_to do |format|
      format.html # Follow regular flow of Rails
      format.text { render partial: 'user_card', :formats=>[:text, :html], locals: { user: @user } }
    end
    @leaders = @friends << current_user
    @leaders = @friends.sort_by(&:overall_score).reverse!
    @my_rank = @leaders.index(current_user)
    @leaders = @leaders.first(5)
    @entry = Entry.new
    @post = Post.new
    @completed = current_user.active_challenges.where(completed: true)
    @entry_user = current_user.entries
    @day_data = {}
    @entry_user.each { |entry| @day_data.store(entry.created_at.strftime("%Y%m%d"), entry.day_score) }

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
    @day_data = {}
    @entry_user.each { |entry| @day_data.store(entry.created_at.strftime("%Y%m%d"), entry.day_score) }
    @leaders = current_user.friends.sort_by(&:overall_score)
    @completed = current_user.active_challenges.where(completed: true)
  end

  private

  def users_params
    params.require(:user).permit(:first_name, :last_name)
  end
end
