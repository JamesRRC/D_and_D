# frozen_string_literal: true

ActiveAdmin.register HireClass do
  permit_params :name, :description
end
