class CreateFundings < ActiveRecord::Migration
  def change
    create_table :fundings do |t|
      t.references :user, index: true, foreign_key: true
      t.references :project, index: true, foreign_key: true
      t.references :reward, index: true, foreign_key: true
      t.decimal :pledge_amount

      t.timestamps null: false
    end
  end
end
