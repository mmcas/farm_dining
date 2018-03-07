class Restaurant < ApplicationRecord
  has_many :shopping_baskets
  belongs_to :user
  mount_uploader :avatar_photo, PhotoUploader
end
