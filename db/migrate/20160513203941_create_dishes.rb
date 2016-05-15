class CreateDishes < ActiveRecord::Migration
  def change
    create_table :dishes do |t|
    	t.string     :category
    	t.string     :name
    	t.string     :description
    	t.float      :price
    	t.float      :calories
    	t.float      :carbs
    	t.float      :protein
    	t.float      :fat
    	t.float      :sugar

      t.timestamps null: false
    end
  end
end
