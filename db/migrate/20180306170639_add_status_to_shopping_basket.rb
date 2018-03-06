class AddStatusToShoppingBasket < ActiveRecord::Migration[5.1]
  def change
    add_column :shopping_baskets, :status, :integer
  end
end
