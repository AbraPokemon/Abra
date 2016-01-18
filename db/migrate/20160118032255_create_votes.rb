class CreateVotes < ActiveRecord::Migration
  def change
    create_table :votes do |t|
      t.references :votable, index: true, polymorphic: true
      t.references :voter, index: true, polymorphic: true

      t.timestamps null: false
    end
  end
end
