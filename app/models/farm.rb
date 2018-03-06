class Farm < ApplicationRecord
  has_many :ingredients, dependent: :destroy

  # include PgSearch
  # multisearchable against: [ :location ]
end
