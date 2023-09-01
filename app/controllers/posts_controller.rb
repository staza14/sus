class PostsController < ApplicationController
  def index
    @posts = Post.where(user_id: current_user.id)
  end

  def create
    @post = Post.new(post_params)
    @post.user = current_user
    if @post.save
      redirect_to feed_path, alert: "Posted successfully"
    else
      render "users/feed", status: :unprocessable_entity
    end
  end

  private

  def post_params
    params.require(:post).permit(:content, :image)
  end
end

# def destroy
#   @post = Post.find(params[:id])
#   @post.destroy
#   redirect_to feed_path(current_user), status: :see_other
# end
