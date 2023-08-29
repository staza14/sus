class EntriesController < ApplicationController

  def create
    @entry = Entry.new(entries_params)
    @entry.user = current_user
    if @entry.save
      redirect_to dashboard_path
    else
      render
    end
  end


  private

  def entries_params
    params.require(:entry).permit(:food_score, :travel_score, :home_score, :Car_Kms, :Cycle_Kms, :Public_Transports_Kms, :day_score, :user_id)
  end
end
