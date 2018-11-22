class RentalsController < ApplicationController
  def create
    @rental = Rental.new(rental_params)
    @clothe = Clothe.find(params[:clothe_id])
    if @rental.save
      @clothe.available = false
      @clothe.save
      @notification = Notification.new(rental_id: @rental.id, receiver_id: @rental.clothe.owner.id)
      @notification.save
      redirect_to clothes_path, notice: "Congrats! You just rented #{@clothe.name}. The owner will contact you."
    else
      redirect_to clothes_path, notice: "There has been as issue, the rental didn't work."
    end
  end

  private

  def rental_params
    params.permit(:renter_id, :clothe_id)
  end
end
