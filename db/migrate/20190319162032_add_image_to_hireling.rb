class AddImageToHireling < ActiveRecord::Migration[5.2]
  def change
    add_column :hirelings, :image, :string
  end
end
