class RenameThumbnailUrlInEvent < ActiveRecord::Migration
  def change
    rename_column :events, :thumbnail_url, :thumbnail
  end
end
