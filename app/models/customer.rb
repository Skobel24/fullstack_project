class Customer < ApplicationRecord
  has_many :orders
  has_one :province
  # validates :customer_name, :customer_address, :customer_country,
  #           :postal_code, :is_vip, :province_id, presence: true
end
