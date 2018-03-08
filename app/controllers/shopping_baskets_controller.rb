class ShoppingBasketsController < ApplicationController
  def show
    @shopping_basket = current_user.restaurant.shopping_baskets.where(status: 0).first
  end
end
