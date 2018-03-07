class ShoppingBasketsController < ApplicationController
  def show
    @cart = current_user.restaurant.shopping_baskets.where(status: 0).first
  end
end
