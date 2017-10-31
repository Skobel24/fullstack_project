class LineItem < ApplicationRecord
  belongs_to :product
  belongs_to :order
  validates :quantity_ordered, :order_id, :product_id, presence:true
end
