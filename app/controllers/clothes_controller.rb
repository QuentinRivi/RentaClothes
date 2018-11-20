class ClothesController < ApplicationController

  skip_before_action :authenticate_user!, only: [:index, :show]
  before_action :set_clothe, only: [:edit, :update, :destroy]


  def new
    @clothe = Clothe.new
  end

  def create

  end

  def index
    @clothes = Clothe.all
  end

  def edit
    @clothe
  end

  def update
  end

  def destroy
  end

  def show
    @clothe = Clothe.find(params[:id])
  end

  private

  def clothe_params
    params.require(:clothe).permit(:name, :owner_id, :size, :brand, :state)
  end

  def set_clothe
    @clothe = Clothe.find(params[:id])
  end
end
