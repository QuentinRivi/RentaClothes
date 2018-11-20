class ClothesController < ApplicationController

  skip_before_action :authenticate_user!, only: [:index, :show]
  before_action :set_clothe, only: [:edit, :update, :destroy]


  def new
    @clothe = Clothe.new
  end

  def create
    @clothe = Clothe.new(clothe_params)
    if @clothe.save
      redirect_to clothes_path
    else
      render :new
    end
  end

  def index
    @clothes = Clothe.all
  end

  def edit
  end

  def update
    if @clothe.update(clothe_params)
      redirect_to clothe_path(@clothe)
    else
      render :edit
    end
  end

  def destroy
    @clothe.destroy
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
