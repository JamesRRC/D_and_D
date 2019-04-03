class AddHsTtoProvince < ActiveRecord::Migration[5.2]
  def change
    add_column :province, :hst, :decimal
  end
end
