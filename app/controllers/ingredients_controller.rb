class IngredientsController < ApplicationController

  def index

    @user = current_user
    @ingredients = Ingredient.all

  end

  def show
    @ingredient = Ingredient.find(params[:id])
  end

end
