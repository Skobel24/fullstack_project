class AddRelationships < ActiveRecord::Migration[5.1]
  def change
    add_foreign_key :orders, :customers
    add_foreign_key :line_iems, :orders
    add_foreign_key :line_iems, :products
  end
end
