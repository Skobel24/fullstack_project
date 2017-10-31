class Order < ApplicationRecord
  has_many :line_items
  has_many :products, :through => :line_items
  belongs_to :customer
  has_one :order_status
  validates :number_of_items, :rushed_delivery, presence:true
end
