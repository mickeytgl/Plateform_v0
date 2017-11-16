class CreateDinnerCategories < ActiveRecord::Migration[5.1]
  def change
    create_table :dinner_categories do |t|
      t.references :dinner, foreign_key: true
      t.references :category, foreign_key: true

      t.timestamps
    end
  end
end
