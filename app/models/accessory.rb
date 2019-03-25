# frozen_string_literal: true

class Accessory < ApplicationRecord
  validates :accessory_name, :description, :cost, :stock, presence: true
  validates :accessory_name, uniqueness: true
  paginates_per 5
end
