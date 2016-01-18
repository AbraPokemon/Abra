class DropUnusedTable < ActiveRecord::Migration
  def change
    drop_table :comments
    drop_table :fundings
    drop_table :rewards
    drop_table :stories
    drop_table :projects
    drop_table :categories
  end
end
