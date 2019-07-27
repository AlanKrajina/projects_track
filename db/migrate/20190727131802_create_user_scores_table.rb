class CreateUserScoresTable < ActiveRecord::Migration
  def change
      create_table :user_scores do |t|
      t.integer :user_id
      t.integer :score_id
    end
  end
end
