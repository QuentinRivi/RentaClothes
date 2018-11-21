class Clothe < ApplicationRecord
  belongs_to :owner, class_name: "User", foreign_key: "owner_id"
  has_many :renters, through: :rentals
  has_one_attached :photo

  def address
    owner.address
  end

  def longitude
    owner.longitude
  end

  def latitude
    owner.latitude
  end

  def localisable?
    latitude.present? && longitude.present?
  end
end
