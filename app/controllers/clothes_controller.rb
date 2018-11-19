class ClothesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index]
  def new

  end

  def create

  end

  def index
    @clothes = Clothe.all
  end

  def edit

  end

  def update

  end

  def destroy

  end

  def show

  end
end
