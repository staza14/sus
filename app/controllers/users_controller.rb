class UsersController < ApplicationController

  def feed

    @post = Post.new
  end

  def dashboard
    @entry = Entry.new
  end
end
