class Store < ApplicationRecord
  has_many :products
  has_many :user_stores

  validates :name, presence: true, uniqueness: true
end
