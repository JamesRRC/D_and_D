class AddContactPhoneToAbout < ActiveRecord::Migration[5.2]
  def change
    add_column :abouts, :contact_phone, :integer
  end
end
