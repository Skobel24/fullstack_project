class AddIsSaleItemToProducts < ActiveRecord::Migration[5.1]
  def change
    add_column :products, :is_sale_item, :boolean
    add_column :products, :sale_price, :decimal
  end
end
