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
    @entry = Entry.new
  end

  private
  def users_params
    params.require(:user).permit(:first_name, :last_name)
  end
end

