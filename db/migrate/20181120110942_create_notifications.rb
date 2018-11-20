class CreateNotifications < ActiveRecord::Migration[5.2]
  def change
    create_table :notifications do |t|
      t.boolean :read, default: false
      t.references :receiver, foreign_key: { to_table: :users }
      t.references :rental, foreign_key: true

      t.timestamps
    end
  end
end
