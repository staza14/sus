class CreateActiveChallenges < ActiveRecord::Migration[7.0]
  def change
    create_table :active_challenges do |t|
      t.boolean :completed, default: false
      t.references :user, null: false, foreign_key: true
      t.references :challenge, null: false, foreign_key: true

      t.timestamps
    end
  end
end
