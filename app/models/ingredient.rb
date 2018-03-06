class Ingredient < ApplicationRecord
  belongs_to :farm
  has_many :orders
  validates :sku, presence: true, uniqueness: true
  validates :name, presence:true

  monetize :price_cents
end
