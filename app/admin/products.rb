ActiveAdmin.register Product do
  permit_params :product_name, :product_description, :stock_quantity,
                :product_cost, :category_id, :is_sale_item, :sale_price

end
