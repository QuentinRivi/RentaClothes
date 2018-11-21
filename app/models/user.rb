class User < ApplicationRecord
  has_many :clothes
  has_many :rentals
  has_many :notifications, foreign_key: :receiver_id
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
end
