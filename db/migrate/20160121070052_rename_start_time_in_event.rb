class RenameStartTimeInEvent < ActiveRecord::Migration
  def change
    rename_column :events, :start_time, :start_at
  end
end
