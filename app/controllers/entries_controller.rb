class EntriesController < ApplicationController

  def create
    @entry = Entry.new(entries_params)
    @entry.user = current_user
    if @entry.save
      redirect_to feed_path(entry)
    else
      render :new, status: :unprocessable_entity
    end
  end


  private

  def entries_params
    params.require(:entry).permit(:food_score, :travel_score, :home_score, :day_score, :user_id)
  end
end
