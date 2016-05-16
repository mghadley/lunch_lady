class CreateMeals < ActiveRecord::Migration
  def change
    create_table :meals do |t|
    	t.string :main_dish
    	t.string :side_dish_1
    	t.string :side_dish_2
    	t.string :add_ons

    	t.float :wallet

    	t.float :main_dish_price
    	t.float :side_dish_1_price
    	t.float :side_dish_2_price
    	t.float	:add_ons_price
    	t.float :final_price

      t.timestamps null: false
    end
  end
end
