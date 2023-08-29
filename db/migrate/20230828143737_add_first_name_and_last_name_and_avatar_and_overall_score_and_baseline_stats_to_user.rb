class AddFirstNameAndLastNameAndAvatarAndOverallScoreAndBaselineStatsToUser < ActiveRecord::Migration[7.0]
  def change
    add_column :users, :first_name, :string
    add_column :users, :last_name, :string
    add_column :users, :avatar, :string
    add_column :users, :overall_score, :float
    add_column :users, :baseline_stats, :float
  end
end
