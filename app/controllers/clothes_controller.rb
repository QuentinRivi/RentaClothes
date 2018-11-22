class ClothesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index, :show]
  before_action :set_clothe, only: [:edit, :update, :destroy, :not_available, :make_available]

  def available?
    available
  end

  def make_available
    @clothe.available = true
    @clothe.save
    redirect_to clothe_path(@clothe), notice: "#{@clothe.name.capitalize} is now available and can be rented."
  end

  def not_available
    @clothe.available = false
    @clothe.save
    redirect_to clothe_path(@clothe), notice: "#{@clothe.name.capitalize} is not available anymore."
  end

  def new
    @clothe = Clothe.new
  end

  def create
    @clothe = Clothe.new(clothe_params)
    @clothe.owner = current_user
    # @clothe.photo.attach(params[:photo])

    if @clothe.save
      redirect_to clothes_path
    else
      render :new
    end
  end

  def index
    @search = Clothe.ransack(params[:q])
    @clothes = @search.result(distinct: true).select(&:available?)
    @clothes_on_map = Clothe.select(&:localisable?)

    @markers = @clothes_on_map.map do |clothe|
      {
        lng: clothe.longitude,
        lat: clothe.latitude,
        infoWindow: { content: render_to_string(partial: "/clothes/map_window", locals: { clothe: clothe }) }
      }
    end
  end

  def index_my_clothes
    @clothes = Clothe.all.select { |clothe| clothe.owner == current_user }
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
    redirect_to '/clothes', notice: "Your clothe has been deleted"
  end

  def home
    @clothes = Clothe.all
    @clothes_on_map = Clothe.select { |clothe| clothe.localisable? }
    @markers = @clothes_on_map.map do |clothe|
      {
        lng: clothe.longitude,
        lat: clothe.latitude,
        infoWindow: { content: render_to_string(partial: "/clothes/map_window", locals: { clothe: clothe }) }
      }
    end
  end

  def show
    @clothe = Clothe.find(params[:id])
  end

  private

  def clothe_params
    params.require(:clothe).permit(:name, :size, :brand, :state, :photo)
  end

  def set_clothe
    @clothe = Clothe.find(params[:id])
  end

end
