class Guest < ApplicationRecord
  belongs_to :user
  belongs_to :dinner

  validates_uniqueness_of :user, scope: :dinner
end
