class Rental < ApplicationRecord
  belongs_to :renter, class_name: "User"
  belongs_to :clothe
  has_many :notifications, dependent: :destroy
end
