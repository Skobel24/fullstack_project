class Product < ApplicationRecord
  mount_uploader :imagepath, ImagepathUploader
  belongs_to :category
  has_many :line_items
  has_many :orders, :through => :line_items
  # validates :product_name, :product_description, :secret_description,
  #           :stock_quantity, :product_cost, :category_id,
  #           :is_sale_item, :sale_price, presence:true

  def self.search_category_name(search)
    where("product_name LIKE ? OR product_description LIKE ?",
          "%#{search}%", "%#{search}%")
  end

  def self.search_category_id(category_id)
    where("category_id = ?", "#{category_id}")
  end

  def self.search_category_name_id(search, category_id)

    if category_id == nil
      where("product_name LIKE ? OR product_description LIKE ?",
            "%#{search}%", "%#{search}%")
    else
      where('(product_name LIKE ? OR product_description LIKE ?) AND category_id = ?',
        "%#{search}%", "%#{search}%", "#{category_id}")
    end
  end

  def self.search_sale_items()
    where ("is_sale_item = ?"), true
  end

  def self.search_new_items
    where "created_at >= ?", 5.days.ago
  end

end
