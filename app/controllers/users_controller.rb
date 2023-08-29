class UsersController < ApplicationController

  def feed
    @entry = Entry.new
    @post = Post.new
  end

  def dashboard
  end
end
