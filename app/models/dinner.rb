class Dinner < ApplicationRecord
	mount_uploaders :images, ImagesUploader
	belongs_to :user
	has_many :reviews, as: :reviewable
	has_many :dinner_categories
	has_many :categories, through: :dinner_categories

	geocoded_by :address
	validates :address,:time, :description, :cost, presence: true
	validate :time_cannot_be_in_the_past

	after_validation :geocode 
  

  def time_cannot_be_in_the_past
  	errors.add(:time, "You have to set a time in the future!") if 
      !time.blank? and time < Time.zone.now
  end
end