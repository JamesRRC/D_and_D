class CreateOrderAccessories < ActiveRecord::Migration[5.2]
  def change
    create_table :order_accessories do |t|
      t.integer :order_id_fk
      t.integer :accessory_id_fk
      t.decimal :purchase_price

      t.timestamps
    end
  end
end
