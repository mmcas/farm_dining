class ShoppingBasket < ApplicationRecord
  belongs_to :restaurant
  has_many :orders, dependent: :destroy

  def total_price
    orders.to_a.sum(&:amount_cents)
  end
end
