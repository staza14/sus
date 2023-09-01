class EntriesController < ApplicationController

  def create
    @entry = Entry.new(entries_params)
    @entry.travel_score = @entry.calculate_travel_score

    @entry.food_score = @entry.calculate_food_score

    @entry.home_score = @entry.calculate_home_score
    @entry.day_score = @entry.calculate_total_score
    @entry.user = current_user
    @user = User.find(@entry.user.id)
    @user.overall_score = @entry.user.overall_score + @entry.day_score
    @user.save
    if @entry.save
      redirect_to dashboard_path
    else
      render "users/dashboard", status: :unprocessable_entity
    end
  end


  private

  def entries_params
    params.require(:entry).permit(:food_score, :travel_score,
      :home_score, :Car_Kms, :Cycle_Kms, :Public_Transports_Kms,
      :day_score, :user_id, :car_hours, :bus_hours, :train_hours,
      :cycle_hours, :foot_hours, :beef, :lamb, :cheese, :pork, :poultry,
      :chocolate, :fish, :egg)
  end
end
