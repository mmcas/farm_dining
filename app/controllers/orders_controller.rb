class OrdersController < ApplicationController

  def new
  end

  def show
  @order = Order.where(state: 'paid').find(params[:id])
  end

  def save
  end

  def create
    @shopping_basket = ShoppingBasket.find_or_create_by(restaurant: current_user.restaurant, status: 0)
    @ingredient = Ingredient.find(params[:order][:ingredient_id])
    @order = Order.new(order_params)
    @order.ingredient = @ingredient
    @order.amount = @ingredient.price * params[:order][:order_quantity].to_i
    @order.shopping_basket = @shopping_basket
    @order.save!
    redirect_back(fallback_location: ingredients_path)
  end

  def destroy
    @order = Order.find(params[:id])
    @order.destroy
    redirect_back(fallback_location: checkout_path)
  end

  def edit
    @order = Order.find(params[:id])
  end

  def update
    @order = Order.find(params[:id]) #keep
    @ingredient = Ingredient.find(@order.ingredient_id)
    @order_update = @order.update(order_params) #keep
    @order.amount = @ingredient.price * @order.order_quantity.to_i
    @order.save
    redirect_back(fallback_location: checkout_path) #keep
  end

  private

  def order_params
    params.require(:order).permit(:order_quantity, :price_paid)
  end
end

