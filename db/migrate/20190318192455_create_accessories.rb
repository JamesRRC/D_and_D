class CreateAccessories < ActiveRecord::Migration[5.2]
  def change
    create_table :accessories do |t|
      t.string :accessory_name
      t.string :description
      t.decimal :cost
      t.integer :stock

      t.timestamps
    end
  end
end
