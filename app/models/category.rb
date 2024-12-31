class Category < ApplicationRecord
  has_many :subcategories,
            class_name: "Category", # quan hệ self-referential với chính model category
            foreign_key: "parent_id" # sử dụng parent_id để liên kết
  belongs_to :parent_category, class_name: "Category",
            optional: true, # parent_id có thể nil
            foreign_key: "parent_id"
  has_many :products

  validates :name, presence: true
end
