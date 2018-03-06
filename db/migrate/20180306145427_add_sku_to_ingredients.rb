class AddSkuToIngredients < ActiveRecord::Migration[5.1]
  def change
    add_column :ingredients, :sku, :string
    add_monetize :ingredients, :price, currency: { present: false }

  end
end
