class IngredientsController < ApplicationController

  def index
    @ingredients = Ingredient.all
    @ingredients = Ingredient.search_by_category_and_main_category(params[:query])

  end

  def show
    @ingredient = Ingredient.find(params[:id])
  end
end
