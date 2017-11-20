class CreateGuests < ActiveRecord::Migration[5.1]
  def change
    create_table :guests do |t|
      t.boolean :is_guest
      t.references :user, foreign_key: true
      t.references :dinner, foreign_key: true

      t.timestamps
    end
  end
end
