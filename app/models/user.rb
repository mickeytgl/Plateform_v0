class User < ApplicationRecord
  mount_uploader :avatar, AvatarUploader
  after_create :set_default_avatar!, if: :no_avatar_was_uploaded

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable, :omniauthable, :confirmable

  has_many :services, dependent: :destroy
  has_many :dinners, dependent: :destroy
  has_many :reviews, as: :reviewable, dependent: :destroy
  has_one :payment_source
  

  private 
    def set_default_avatar!
      self.remote_avatar_url = "https://cdn.dribbble.com/users/265267/screenshots/2992127/pizza.png"
    	self.save
    end

    def no_avatar_was_uploaded
      self.avatar.file.nil?
    end

end
