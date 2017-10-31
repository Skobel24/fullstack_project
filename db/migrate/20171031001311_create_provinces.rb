class CreateProvinces < ActiveRecord::Migration[5.1]
  def change
    create_table :provinces do |t|
      t.string :abbreviation
      t.string :province_name

      t.timestamps
    end
  end
end
