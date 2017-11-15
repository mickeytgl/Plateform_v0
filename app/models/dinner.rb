class Dinner < ApplicationRecord
	mount_uploaders :images, ImagesUploader
	belongs_to :user
	has_many :reviews, as: :reviewable
	geocoded_by :address
	validates :address, presence: true
	#validates :time, > Time.zone.now

	after_validation :geocode 

end