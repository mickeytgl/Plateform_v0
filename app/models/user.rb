class User < ApplicationRecord
  mount_uploader :avatar, AvatarUploader
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable, :omniauthable

  #attr_accessible :email, :password, :remember_me, :avatar, :avatar_cache, :remove_avatar
  has_many :services, dependent: :destroy
  has_many :dinners, dependent: :destroy


end
