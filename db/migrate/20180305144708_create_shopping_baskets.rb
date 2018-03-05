class CreateShoppingBaskets < ActiveRecord::Migration[5.1]
  def change
    create_table :shopping_baskets do |t|
      t.references :restaurant, foreign_key: true

      t.timestamps
    end
  end
end
