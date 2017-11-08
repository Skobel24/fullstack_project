ActiveAdmin.register Customer do
  permit_params :customer_name, :customer_address, :customer_country,
                :postal_code, :province_id

end
