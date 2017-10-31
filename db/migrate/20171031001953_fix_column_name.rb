class FixColumnName < ActiveRecord::Migration[5.1]
  def change
    rename_column :Customers, :province_id_id, :province_id
  end
end
