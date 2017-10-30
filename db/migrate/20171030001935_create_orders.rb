class CreateOrders < ActiveRecord::Migration[5.1]
  def change
    create_table :orders do |t|
      t.integer :number_of_items
      t.boolean :rushed_delivery

      t.timestamps
    end
  end
end
