class ClothesController < ApplicationController
  before_action :set_clothe, only: [:show, :edit, :update, :destroy]

  def new
    @clothe = Clothe.new
  end

  def create

  end


  def edit
    @clothe
  end

  def update

  end

  def index
    @clothes = Clothe.new
  end

  def destroy

  end

  def show

  end

  private

  def clothe_params
    params.require(:clothe).permit(:name, :owner_id, :size, :brand, :state)
  end

  def set_clothe
    @clothe = Clothe.find(params[:id])
  end
end
