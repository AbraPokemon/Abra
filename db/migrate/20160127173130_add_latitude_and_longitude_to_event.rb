class AddLatitudeAndLongitudeToEvent < ActiveRecord::Migration
  def change
    add_column :events, :latitude, :float
    add_column :events, :longitude, :float
    remove_column :events, :lat
    remove_column :events, :lng
  end
end
