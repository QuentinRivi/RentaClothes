class Notification < ApplicationRecord
  belongs_to :rental
  belongs_to :receiver, class_name: "User"
end
