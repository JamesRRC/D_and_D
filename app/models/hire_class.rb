# frozen_string_literal: true

class HireClass < ApplicationRecord
  has_many :hirelings

  validates :name, uniqueness: true

  def name
    class_name
  end
end
