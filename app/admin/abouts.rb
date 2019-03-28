# frozen_string_literal: true

ActiveAdmin.register About do
  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters

  permit_params :description, :contact_email, :contact_phone
end
