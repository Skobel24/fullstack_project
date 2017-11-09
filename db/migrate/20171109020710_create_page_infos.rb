class CreatePageInfos < ActiveRecord::Migration[5.1]
  def change
    create_table :page_infos do |t|
      t.text :about_us
      t.text :contact_us

      t.timestamps
    end
  end
end
