class AddRefProductsCategories < ActiveRecord::Migration[5.1]
  def change

    add_reference :products, :category_id, foreign_key: true
  end
end
