class AddSummaryToChallenges < ActiveRecord::Migration[7.0]
  def change
    add_column :challenges, :summary, :string
  end
end
