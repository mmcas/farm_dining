class CreateOrders < ActiveRecord::Migration[5.1]
  def change
    create_table :orders do |t|
      t.date :date
      t.integer :order_quantity
      t.integer :price_paid
      t.references :ingredient, foreign_key: true
      t.references :shopping_basket, foreign_key: true

      t.timestamps
    end
  end
end
