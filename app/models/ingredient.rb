class Ingredient < ApplicationRecord
  belongs_to :farm
  has_many :orders

  validates :sku, presence: true, uniqueness: true
  validates :name, presence:true

  monetize :price_cents

  mount_uploader :photo, PhotoUploader

  include PgSearch
  pg_search_scope :search_by_category_and_main_category,
    against: [ :category, :main_category ],
    using: {
      tsearch: { prefix: true } # <-- now `superman batm` will return something!
    }
  mount_uploader :photo, PhotoUploader
end
