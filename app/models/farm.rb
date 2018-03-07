class Farm < ApplicationRecord
  has_many :ingredients, dependent: :destroy
  mount_uploader :farm_photo, PhotoUploader
  geocoded_by :location
  after_validation :geocode, if: :will_save_change_to_location?

end
