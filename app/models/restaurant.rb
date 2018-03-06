class Restaurant < ApplicationRecord
  has_many :shopping_baskets
  belongs_to :user
end
