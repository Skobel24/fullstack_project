class NewColumnsToPageInfo < ActiveRecord::Migration[5.1]
  def change
    add_column :page_infos, :contact_address, :string
    add_column :page_infos, :contact_phone, :string
    add_column :page_infos, :contact_email, :string
    add_column :page_infos, :hours, :string
  end
end
