class ShoppingBasketsController < ApplicationController
  def show
    @shopping_basket = current_user.restaurant.shopping_baskets.where(status: 'pending').first
    @ingredient = Ingredient.find(params[:ingredient_id]) if params[:ingredient_id]
    @last_shopping_basket = ShoppingBasket.where(restaurant_id: current_user.restaurant.id, status: 1).last
  end
end
