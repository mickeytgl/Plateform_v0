class DinnerCategory < ApplicationRecord
  belongs_to :dinner
  belongs_to :category
end
