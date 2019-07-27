class CreateScoresTable < ActiveRecord::Migration
  def change
      create_table :scores do |t|
      t.string :grade
    end
  end  
end
