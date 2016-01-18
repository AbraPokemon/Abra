class FixDonaterColumnName < ActiveRecord::Migration
  def change
    rename_column :donations, :donater_id, :donor_id
    rename_column :donations, :donater_type, :donor_type
  end
end
