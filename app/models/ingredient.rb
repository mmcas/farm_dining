class Ingredient < ApplicationRecord
  belongs_to :farm
  has_many :orders
  mount_uploader :photo, PhotoUploader
end
