class CreateResultsTable < ActiveRecord::Migration
  def change
    create_table :results do |t|
    t.string :info
    t.integer :project_id
    end
  end
end
