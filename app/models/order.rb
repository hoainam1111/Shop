class Order < ApplicationRecord
  belongs_to :user
  has_many :order_items, dependent: :destroy
  has_many :products, through: :order_items

  validates :shipping_address, presence: true
  validates :status, inclusion: { in: %w[pending processing shipped delivered cancelled] }
  validates :payment_status, inclusion: { in: %w[pending paid failed refunded] }

  before_save :calculate_total_amount

  private

  def calculate_total_amount
    self.total_amount = order_items.sum { |item| item.price * item.quantity }
  end
end
