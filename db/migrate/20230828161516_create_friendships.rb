class CreateFriendships < ActiveRecord::Migration[7.0]
  def change
    create_table :friendships do |t|
      t.boolean :confirmed, default: false
      t.references :asker, null: false, foreign_key: { to_table: :users }
      t.references :receiver, null: false, foreign_key: { to_table: :users }

      t.timestamps
    end
  end
end
