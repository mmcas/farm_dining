class IngredientsController < ApplicationController
# for installation of stripe
  skip_before_action :authenticate_user!

  def index
    @ingredients = Ingredient.all
  end

  def show
    @ingredient = Ingredient.find(params[:id])
  end
end
