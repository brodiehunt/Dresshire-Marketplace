class Product < ApplicationRecord
  belongs_to :brand
  belongs_to :style
  belongs_to :size
  has_one_attached :picture
end
