class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  has_one :restaurant
  mount_uploader :photo, PhotoUploader

  # after_create :create_restaurant_and_give_it_user_id

  private

  def create_restaurant_and_give_it_user_id
    Restaurant.create(name: restaurant_name, location: restaurant_location, avatar_photo: File.new(photo.path), restaurant_email: email, user: self)
  end
end
