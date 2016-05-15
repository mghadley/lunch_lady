class CreateMealAddOns < ActiveRecord::Migration
  def change
    create_table :meal_add_ons do |t|

      t.timestamps null: false
    end
  end
end
