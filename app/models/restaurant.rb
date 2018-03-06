class Restaurant < ApplicationRecord
  has_many :shopping_baskets
  mount_uploader :photo, PhotoUploader
end
