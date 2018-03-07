class FarmsController < ApplicationController

  def show
    # Access to the Farm
    @farm = Farm.find(params[:id])
    # Access to the Farm's Ingredients
    @ingredients = @farm.ingredients

    @farms = Farm.where.not(latitude: nil, longitude: nil)
    @markers = @farms.map do |farm|
      {
        lat: farm.latitude,
        lng: farm.longitude#,
        # infoWindow: { content: render_to_string(partial: "/farms/map_box", locals: { farm: farm }) }
      }
    end
  end
end
