class ProductSize < ApplicationRecord
  belongs_to :product
  validates :size, presence: true, inclusion: { in: %w[S M L XL XXL] }
  validates :quantity, numericality: { only_integer: true, greater_than_or_equal_to: 0 }
end
