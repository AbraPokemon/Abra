class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.string :name
      t.string :location
      t.datetime :start_at
      t.text :short_description
      t.text :story
      t.integer :number_of_participant
      t.decimal :required_amount
      t.datetime :donation_due_date
      t.references :user, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
