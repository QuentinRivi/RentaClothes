class AddAvailableToClothes < ActiveRecord::Migration[5.2]
  def change
    add_column :clothes, :available, :boolean, default: true
  end
end
