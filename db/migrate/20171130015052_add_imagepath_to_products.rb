class AddImagepathToProducts < ActiveRecord::Migration[5.1]
  def change
    add_column :products, :imagepath, :string
  end
end
