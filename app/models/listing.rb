class Listing < ApplicationRecord
  belongs_to :brand
  belongs_to :style
  belongs_to :size
  belongs_to :state
  belongs_to :city
  belongs_to :postcode
  belongs_to :user
  has_one_attached :picture
end
