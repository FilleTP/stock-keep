class Product < ApplicationRecord
  belongs_to :store

  validates :name, :sku, :price_cents, :quantity, presence: true
  validates :price_cents, :quantity, numericality: { only_integer: true, greater_than_or_equal_to: 0}
  validates :sku, uniqueness: { scope: :store_id }
end
