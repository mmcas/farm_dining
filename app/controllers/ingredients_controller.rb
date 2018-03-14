class IngredientsController < ApplicationController
# for installation stripe
  skip_before_action :authenticate_user!

  def index
    @user = current_user
    @order = Order.new

    # Search
    if params[:query].present?
      @ingredients = Ingredient.search_by_category_name_main_category(params[:query])
    else
      @ingredients = Ingredient.all
    end

    @farms = []
    @ingredients.each do |ingredient|
      @farms << ingredient.farm if !ingredient.farm.latitude.nil? || !ingredient.farm.longitude.nil?
    end
    @markers = []
    @markers = @farms.map do |farm|
      {
        lat: farm.latitude,
        lng: farm.longitude#,
      }
    end

    # Sorting
    if params[:filter].present?
      if params[:filter] == "Rating"
        @ingredients = @ingredients.sort_by { |ingredient| -ingredient.rating }
      elsif params[:filter] == "Price"
        @ingredients = @ingredients.sort_by { |ingredient| ingredient.price }
      end
    end
  end

  def show
    @ingredient = Ingredient.find(params[:id])
    @farm = @ingredient.farm
    @order = Order.new
  end
end
