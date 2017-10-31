class Category < ApplicationRecord
  validates :column_name, presence:true, uniqueness: true
end
