class PaymentsController < ApplicationController
  before_action :set_order

  def new
  end

  def create
  customer = Stripe::Customer.create(
    source: params[:stripeToken],
    email:  params[:stripeEmail]
  )

  charge = Stripe::Charge.create(
    customer:     customer.id,   # You should store this customer id and re-use it.
    amount:       @cart.total_price,
    description:  "Payment for Ingredient(s)  for order #{@cart.id}",
    currency:     @cart.orders.first.amount.currency
  )
  @cart.orders.each do |order|
    order.ingredient.available_quantity = order.ingredient.available_quantity - order.order_quantity
    order.ingredient.save
  end
  @cart.update(status: 1)
  redirect_to checkout_path


rescue Stripe::CardError => e
  flash[:alert] = e.message
  redirect_to checkout_path
end

private

  def set_order
    @cart = ShoppingBasket.find(params[:shopping_basket_id])
  end

end
