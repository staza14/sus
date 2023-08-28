class UsersController < ApplicationController

  def feed
    @entry = Entry.new
  end

  def dashboard
  end
end
