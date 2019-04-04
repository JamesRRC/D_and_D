ActiveAdmin.register Order do

  permit_params :subtotal, :tax, :shipping, :total, :quantity, :accessory_id, :order_status_id

end
