class Farm < ApplicationRecord
  has_many :ingredients, dependent: :destroy
  mount_uploader :photo, PhotoUploader
end
