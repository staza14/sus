class UsersController < ApplicationController
  def feed
    @posts = Post.where(user_id: current_user.id)
    if params[:query].present?
      @user = User.find_by(email:params[:query])
    end

    respond_to do |format|
      format.html # Follow regular flow of Rails
      format.text { render partial: 'user_card', :formats=>[:text, :html], locals: { user: @user } }
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
