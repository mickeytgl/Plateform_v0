class Dinner < ApplicationRecord
	belongs_to :user
	after_validation :geocode 
	geocoded_by :address
end
