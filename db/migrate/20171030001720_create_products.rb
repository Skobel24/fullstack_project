class CreateProducts < ActiveRecord::Migration[5.1]
  def change
    create_table :products do |t|
      t.string :product_name
      t.string :product_description
      t.string :secret_description
      t.integer :stock_quantity
      t.decimal :product_cost

      t.timestamps
    end
  end
end
