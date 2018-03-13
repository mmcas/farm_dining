class ShoppingBasket < ApplicationRecord
  belongs_to :restaurant
  has_many :orders, dependent: :destroy

  def total_price
    total = 0
    orders.to_a.each{ |order| total += (order.amount_cents * order.order_quantity)}
      return total
  end
end
