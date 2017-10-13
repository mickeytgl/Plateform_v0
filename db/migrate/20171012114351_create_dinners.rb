class CreateDinners < ActiveRecord::Migration[5.1]
  def change
    create_table :dinners do |t|
      t.string :place
      t.datetime :time
      t.text :description
      t.integer :cost

      t.timestamps
    end
  end
end
