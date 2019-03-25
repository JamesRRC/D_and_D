class CreateHireClasses < ActiveRecord::Migration[5.2]
  def change
    create_table :hire_classes do |t|
      t.string :class_name
      t.string :class_description

      t.timestamps
    end
  end
end
