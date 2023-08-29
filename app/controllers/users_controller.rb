class UsersController < ApplicationController

  def feed
  end

  def dashboard
    @entry = Entry.new
  end
end
