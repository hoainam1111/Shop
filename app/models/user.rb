class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  validates :name, presence: true
  validates :phone, presence: true, format: { with: /\A\d{10,11}\z/, message: "must be 10-11 digits" }
  enum role: { customer: "customer", admin: "admin" }
end
