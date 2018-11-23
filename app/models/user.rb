class User < ApplicationRecord
  has_many :clothes
  has_many :rentals
  has_one_attached :avatar
  has_many :notifications, foreign_key: :receiver_id
  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
end
