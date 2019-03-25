class CreateOrders < ActiveRecord::Migration[5.2]
  def change
    create_table :orders do |t|
      t.string :accessories_ordered
      t.decimal :price_total

      t.timestamps
    end
  end
end
