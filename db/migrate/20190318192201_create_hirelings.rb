class CreateHirelings < ActiveRecord::Migration[5.2]
  def change
    create_table :hirelings do |t|
      t.string :name
      t.string :class

      t.timestamps
    end
  end
end
