# frozen_string_literal: true

class HireClass < ApplicationRecord
  has_many :hirelings

  validates :name, uniqueness: true

  def class_name
    name
  end

  def class_description
    description
  end
end
