# frozen_string_literal: true

class CreateHireClasses < ActiveRecord::Migration[5.2]
  def change
    create_table :hire_classes do |t|
      t.string :name
      t.string :description

      t.timestamps
    end
  end
end
