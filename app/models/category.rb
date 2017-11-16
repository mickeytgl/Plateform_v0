class Category < ApplicationRecord
  has_many :dinner_categories
  has_many :dinners, through: :dinner_categories
end
