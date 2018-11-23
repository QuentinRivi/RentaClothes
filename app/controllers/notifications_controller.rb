class NotificationsController < ApplicationController
  def index
    @notifications = Notification.all.select { |notification| notification.receiver == current_user }
  end

  def mark_read
    @notification      = Notification.find(params[:id])
    @notification.read = true
    @notification.save
    redirect_to notifications_path
  end

  def fetch
    render json: {count: current_user.notifications.unread.count}.to_json
  end
end
