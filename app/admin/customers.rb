# frozen_string_literal: true

ActiveAdmin.register Customer do
  permit_params :f_name, :l_name, :email
end
