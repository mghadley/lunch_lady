class CreateMeals < ActiveRecord::Migration
  def change
    create_table :meals do |t|
    	t.float :final_price

      t.timestamps null: false
    end
  end
end
