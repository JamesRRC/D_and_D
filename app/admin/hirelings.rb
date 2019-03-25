# frozen_string_literal: true

ActiveAdmin.register Hireling do
  permit_params :name, :class, :image, :hire_class_id
end
