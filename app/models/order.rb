# frozen_string_literal: true

class Order < ApplicationRecord
  validates :accessories_ordered, :price_total, presence: true
  validates :price_total, numericality: true
end
