class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:home]
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

  def profile
    @user = current_user
  end
end
