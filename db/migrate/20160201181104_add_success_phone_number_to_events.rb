class AddSuccessPhoneNumberToEvents < ActiveRecord::Migration
  def change
    add_column :events, :success, :boolean, default: false
    add_column :events, :phone_number, :string
  end
end
