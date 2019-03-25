# frozen_string_literal: true

class RemoveClassFromHirelings < ActiveRecord::Migration[5.2]
  def change
    remove_column :hirelings, :class
  end
end
