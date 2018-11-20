class RentalsController < ApplicationController

  def create
    @rental = Rental.new(rental_params)
    @clothe = Clothe.find(params[:clothe_id])
    @rental.save
    @notification = Notification.new(rental_id: @rental.id, receiver_id: @rental.clothe.owner.id)
    @notification.save
    redirect_to clothe_path(@clothe)
  end

  private

  def rental_params
    params.permit(:renter_id, :clothe_id)
  end
end
