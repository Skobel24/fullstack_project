class CreateCustomers < ActiveRecord::Migration[5.1]
  def change
    create_table :customers do |t|
      t.string :customer_name
      t.string :customer_address
      t.string :customer_country
      t.string :postal_code
      t.boolean :is_vip

      t.timestamps
    end
  end
end
