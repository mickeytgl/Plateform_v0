class Review < ApplicationRecord
	belongs_to :reviewable, polymorphic: true

	validates :body, presence: true
end
