class FarmsController < ApplicationController

  def show
    # Access to the Farm
    @farm = Farm.find(params[:id])
    # Access to the Farm's Ingredients
    @ingredients = @farm.ingredients
  end
end
