class AddActiveToAccessory < ActiveRecord::Migration[5.2]
  def change
    add_column :accessories, :active, :boolean
  end
end
