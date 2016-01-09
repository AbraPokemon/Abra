class CreateRewards < ActiveRecord::Migration
  def change
    create_table :rewards do |t|
      t.decimal :pledge
      t.text :description
      t.datetime :estimated_delivery
      t.integer :limited_quantity
      t.references :project, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
