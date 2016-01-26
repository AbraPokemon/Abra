class ChangeThumbnailToUrlInEvent < ActiveRecord::Migration
  def change
  	rename_column :events, :thumbnail, :thumbnail_url
  	change_column_default :events, :enable, false
  end
end
