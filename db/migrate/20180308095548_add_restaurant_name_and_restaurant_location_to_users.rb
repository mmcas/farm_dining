class AddRestaurantNameAndRestaurantLocationToUsers < ActiveRecord::Migration[5.1]
  def change
    add_column :users, :restaurant_name, :string
    add_column :users, :restaurant_location, :string
  end
end
