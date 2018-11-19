class CreateClothes < ActiveRecord::Migration[5.2]
  def change
    create_table :clothes do |t|
      t.string :name
      t.integer :owner_id
      t.string :size
      t.string :brand
      t.integer :state

      t.timestamps
    end
    add_index :clothes, :owner_id
  end
end
