module ApplicationHelper

  def count_notifications
    @count_notifications = current_user.notifications.select{ |notif| notif.read == false }.length
  end

  def photo_url_for(clothe)
    if clothe.photo.present?
      rails_blob_url(clothe.photo)
    else
      "http://unsplash.it/400/400"
    end
  end
end
