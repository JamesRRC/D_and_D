# frozen_string_literal: true

class AddHireClassToHireling < ActiveRecord::Migration[5.2]
  def change
    add_reference :hirelings, :hire_class, foreign_key: true
  end
end
