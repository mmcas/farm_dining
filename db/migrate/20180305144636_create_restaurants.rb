class CreateRestaurants < ActiveRecord::Migration[5.1]
  def change
    create_table :restaurants do |t|
      t.string :name
      t.string :location
      t.string :avatar_photo
      t.string :restaurant_email

      t.timestamps
    end
  end
end
