class CreateChallenges < ActiveRecord::Migration[7.0]
  def change
    create_table :challenges do |t|
      t.text :description
      t.string :badge
      t.integer :challenge_score
      t.string :name
      t.integer :duration
      t.string :category

      t.timestamps
    end
  end
end
