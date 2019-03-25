# frozen_string_literal: true

ActiveAdmin.register Accessory do
  permit_params :accessory_name, :description, :cost, :stock
end
