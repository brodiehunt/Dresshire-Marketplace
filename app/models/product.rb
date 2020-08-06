class Product < ApplicationRecord
  belongs_to :brand
  belongs_to :style
  belongs_to :size
end
