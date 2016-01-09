class CreateStories < ActiveRecord::Migration
  def change
    create_table :stories do |t|
      t.references :project, index: true, foreign_key: true
      t.string :project_video_url
      t.text :description
      t.text :risk_challenges
      t.timestamps null: false
    end
  end
end
