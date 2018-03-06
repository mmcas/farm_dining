class IngredientsController < ApplicationController

  def index
    @ingredients = Ingredient.all
    @order = Order.new
  end

  def show
    @ingredient = Ingredient.find(params[:id])
    @order = Order.new
  end
end
