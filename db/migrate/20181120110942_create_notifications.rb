class CreateNotifications < ActiveRecord::Migration[5.2]
  def change
    create_table :notifications do |t|
      t.boolean :read
      t.date :date
      t.integer :recever_id
      t.references :rental, foreign_key: true

      t.timestamps
    end
    add_index :users, :recever_id
  end
end
