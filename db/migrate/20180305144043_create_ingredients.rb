class CreateIngredients < ActiveRecord::Migration[5.1]
  def change
    create_table :ingredients do |t|
      t.string :name
      t.text :description
      t.string :photo
      t.integer :price
      t.string :category
      t.string :main_category
      t.integer :rating
      t.integer :available_quantity
      t.string :price_type
      t.references :farm, foreign_key: true

      t.timestamps
    end
  end
end
