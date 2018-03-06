class AddDescriptionToFarms < ActiveRecord::Migration[5.1]
  def change
    add_column :farms, :description, :string
  end
end
