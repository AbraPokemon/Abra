class CreateDonations < ActiveRecord::Migration
  def change
    create_table :donations do |t|
      t.references :donatable, index: true, polymorphic: true
      t.references :donater, index: true, polymorphic: true

      t.timestamps null: false
    end
  end
end
