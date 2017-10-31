class AddOrderRefToLineItems < ActiveRecord::Migration[5.1]
  def change
    add_reference :line_items, :order, foreign_key: true
    add_reference :line_items, :product, foreign_key: true
    add_reference :orders, :customer, foreign_key: true
  end
end
