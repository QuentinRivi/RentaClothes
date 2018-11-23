module ApplicationHelper

def count_notifications
  @count_notifications = current_user.notifications.select{ |notif| notif.read == false }.length
end


end
