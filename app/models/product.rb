class Product < ApplicationRecord
  belongs_to :category
  belongs_to :brand

  has_many :product_images
  has_many :cart_items
  has_many :order_items
  has_many :reviews

  validates :name, presence: true
  validates :price, presence: true, numericality: { greater_than_or_equal_to: 0 }
  validates :stock, presence: true, numericality: { greater_than_or_equal_to: 0 }

  validates :status, inclusion: { in: %w[active inactive] }

  scope :active, -> { where(status: "active") } # scope lọc các sản phẩm có trạng thái active, -> là lamda function, sử dụng: Product.active, tương đương Product.where(status: "active")
  scope :with_stock, -> { where("stock > 0") }
end
