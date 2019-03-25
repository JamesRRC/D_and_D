# frozen_string_literal: true

ActiveAdmin.register HireClass do
  permit_params :class_name, :class_description
end
