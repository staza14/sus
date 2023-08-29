class UsersController < ApplicationController

  def feed
    @entry = Entry.new
    @post = Post.new
  end

  def dashboard
    @entry = Entry.new
  end
end
