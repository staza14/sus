class UsersController < ApplicationController
  def feed
  @entry = Entry.new
 if params[:query].present?
  @users = User.search_by_first_name_and_last_name(params[:query])
else
  @users = User.all
end
  end

  def dashboard
  end

  private
  def users_params
    params.require(:user).permit(:first_name, :last_name)
  end
end
# if params[:query].present?
#   @users = User.search_by_first_name_and_last_name(params[:query])
# else
#   @users = User.all
# end
