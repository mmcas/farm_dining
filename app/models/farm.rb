class Farm < ApplicationRecord
  has_many :ingredients, dependent: :destroy
  mount_uploader :farm_photo, PhotoUploader
end
