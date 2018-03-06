class AddSkuToIngredients < ActiveRecord::Migration[5.1]
  def change
    add_column :ingredients, :sku, :string
  end
end
