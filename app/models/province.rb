class Province < ApplicationRecord
  validates :abbreviation, :province_name, presence:true
end
