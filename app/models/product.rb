class Product < ApplicationRecord
  # belongs_to :user
  belongs_to :category
  belongs_to :brand, optional: true
  has_one :shipping
  has_one :order
  has_many :product_images
  accepts_nested_attributes_for :shipping
  accepts_nested_attributes_for :brand
  accepts_nested_attributes_for :product_images
end
