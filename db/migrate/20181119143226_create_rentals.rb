class CreateRentals < ActiveRecord::Migration[5.2]
  def change
    create_table :rentals do |t|
      t.references :clothe, foreign_key: true
      t.integer :renter_id


      t.timestamps
    end
    add_index :rentals, :renter_id
  end
end
