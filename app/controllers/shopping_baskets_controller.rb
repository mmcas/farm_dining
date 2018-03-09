class ShoppingBasketsController < ApplicationController
  def show
    @shopping_basket = current_user.restaurant.shopping_baskets.where(status: 0).first
    @ingredient = Ingredient.find(params[:ingredient_id]) if params[:ingredient_id]
  end
end
