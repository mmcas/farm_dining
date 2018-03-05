class CreateFarms < ActiveRecord::Migration[5.1]
  def change
    create_table :farms do |t|
      t.string :location
      t.string :farm_name
      t.string :farmers_name
      t.string :avatar_photo
      t.string :farm_photo
      t.string :farmer_email

      t.timestamps
    end
  end
end
