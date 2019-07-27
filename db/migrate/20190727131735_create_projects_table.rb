class CreateProjectsTable < ActiveRecord::Migration
  def change
    create_table :projects do |t|
    t.string :name
    t.integer :user_id
    t.string :content
    t.string :completion
    end
  end
end
