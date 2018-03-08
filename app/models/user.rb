class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  has_one :restaurant
  mount_uploader :photo, PhotoUploader

  after_save :create_restaurant_and_give_it_user_id, on: :create

  private

  def create_restaurant_and_give_it_user_id
    # Create a new restaurant and give it the id of the signed up user
    restaurant = Restaurant.create!(user: self)
  end
end

