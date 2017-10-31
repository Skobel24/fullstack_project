class Product < ApplicationRecord
  belongs_to :category
  has_many :line_items
  has_many :orders, :through => :line_items
  validates :product_name, :product_description, :secret_description,
            :stock_quantity, :product_cost, :category_id,
            :is_sale_item, :sale_price, presence:true
end
