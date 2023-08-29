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
  end

  private
  def users_params
    params.require(:user).permit(:first_name, :last_name)
  end
end

