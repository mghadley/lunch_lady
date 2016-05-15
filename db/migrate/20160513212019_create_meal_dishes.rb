class CreateMealDishes < ActiveRecord::Migration
  def change
    create_table :meal_dishes do |t|

    	t.references :meal, index: true, foreign_key: true
    	t.references :dish, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
