ActiveAdmin.register Order do

  permit_params :subtotal, :tax, :shipping, :total

end
