ActiveAdmin.register Event do

# See permitted parameters documentation:
# https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
#
  permit_params :name,
      :category_id, :location, :city, :lat, :lng,
      :start_at, :short_description, :number_of_participant,
      :required_amount, :donation_due_date, :story, :thumbnail_url, :enable, :success, :phone_number

  index do
    id_column
    column :name
    column :short_description
    column :story
    column :thumbnail_url do |event|
      image_tag(event.thumbnail_url, size: "100x50")
    end
    column :required_amount
    column :donation_due_date
    column :user
    actions
  end

end
