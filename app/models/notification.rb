class Notification < ApplicationRecord
  belongs_to :rental
  belongs_to :receiver, class_name: "User"
  scope :unread, -> { where(read: false) }


  def fetch
    @notification_number = count_notifications
    render json: @notification_number
  end
end
