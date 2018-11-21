class AddCoordinatesToClothes < ActiveRecord::Migration[5.2]
  def change
    add_column :clothes, :latitude, :float
    add_column :clothes, :longitude, :float
  end
end
