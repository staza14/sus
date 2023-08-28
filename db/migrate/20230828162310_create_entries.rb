class CreateEntries < ActiveRecord::Migration[7.0]
  def change
    create_table :entries do |t|
      t.float :food_score
      t.float :travel_score
      t.float :home_score
      t.float :day_score
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
