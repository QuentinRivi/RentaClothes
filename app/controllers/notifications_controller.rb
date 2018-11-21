class NotificationsController < ApplicationController

  def index
    @notifications = Notification.all.select { |notification| notification.receiver == current_user}
  end
end
