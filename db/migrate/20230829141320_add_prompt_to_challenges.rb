class AddPromptToChallenges < ActiveRecord::Migration[7.0]
  def change
    add_column :challenges, :prompt, :string
  end
end
