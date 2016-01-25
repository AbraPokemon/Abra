class AddFieldsToEvent < ActiveRecord::Migration
  def change
    add_column :events, :city, :string
    add_column :events, :lat, :decimal, {:precision=>10, :scale=>6}
    add_column :events, :lng, :decimal, {:precision=>10, :scale=>6}
    add_column :events, :enable, :boolean
  end
end
