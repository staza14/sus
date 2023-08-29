class CreateActiveChallengeDays < ActiveRecord::Migration[7.0]
  def change
    create_table :active_challenge_days do |t|
      t.boolean :status, default: false
      t.integer :day
      t.references :active_challenge, null: false, foreign_key: true

      t.timestamps
    end
  end
end
