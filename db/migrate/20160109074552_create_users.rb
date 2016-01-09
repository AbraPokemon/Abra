class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :full_name
      t.string :avatar_url
      t.string :bio
      t.string :location
      t.string :website
      t.timestamps null: false
    end
  end
end
