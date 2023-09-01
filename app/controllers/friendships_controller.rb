class FriendshipsController < ApplicationController

def create
  @friendship = Friendship.new
  @friendship.asker = current_user

  @friendship.receiver = User.find(params[:user_id])
  @friendship.save
  redirect_to feed_path, notice: "Your friendship has been accepted"
end



private
def friendships_params
  params.require(:friendship).permit(:confirmed, :asker_id, :receiver_id)
end
end
