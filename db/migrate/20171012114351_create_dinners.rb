class CreateDinners < ActiveRecord::Migration[5.1]
  def change
    create_table :dinners do |t|
      t.string :address
      t.float :latitude
      t.float :longitude
      t.datetime :time
      t.text :description
      t.integer :cost
	  t.references :user, foreign_key: true


      t.timestamps
    end
  end
end
