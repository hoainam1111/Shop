class Product < ApplicationRecord
  validates :name, presence: true
  validates :price, numericality: { greater_than_or_equal_to: 0 }
  validates :quantity, numericality: { greater_than_or_equal_to: 0 }
  validates :description, presence: true
  has_many :product_sizes
  accepts_nested_attributes_for :product_sizes
end
