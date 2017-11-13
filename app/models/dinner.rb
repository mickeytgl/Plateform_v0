class Dinner < ApplicationRecord
	mount_uploader :avatars, AvatarUploader
	belongs_to :user
	geocoded_by :address
	validates :address, presence: true
	#validates :time, > Time.zone.now

	after_validation :geocode 

end