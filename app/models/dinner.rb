class Dinner < ApplicationRecord
	mount_uploaders :images, ImagesUploader
	belongs_to :user
	geocoded_by :address
	validates :address, presence: true
	#validates :time, > Time.zone.now

	after_validation :geocode 

end