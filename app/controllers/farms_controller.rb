class FarmsController < ApplicationController

  def show
    # We need to acces the farm through the ingredient id
    @farm = Farm.find(params[:id])
    @order = Order.new
    @ingredient = Ingredient.find(params[:ingredient_id]) if params[:ingredient_id]
    # @farm = @ingredient.farm
    # Access to the Farm's Ingredients
    @ingredients = @farm.ingredients

    @markers = []
    if !@farm.latitude.nil? || !@farm.longitude.nil?
        @markers =
          [{
            lat: @farm.latitude,
            lng: @farm.longitude#,
            # infoWindow: { content: render_to_string(partial: "/farms/map_box", locals: { farm: farm }) }
          }]
    end
  end
end
