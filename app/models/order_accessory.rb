# frozen_string_literal: true

class OrderAccessory < ApplicationRecord
  
  validates :order_id_fk, :accessory_id_fk, :purchase_price, presence: true
end
