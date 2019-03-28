# frozen_string_literal: true

class AddCompanyDescriptionToAbout < ActiveRecord::Migration[5.2]
  def change
    add_column :abouts, :description, :text
  end
end
