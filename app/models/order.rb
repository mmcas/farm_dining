class Order < ApplicationRecord
  belongs_to :ingredient
  belongs_to :shopping_basket
end
