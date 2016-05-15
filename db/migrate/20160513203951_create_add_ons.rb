class CreateAddOns < ActiveRecord::Migration
  def change
    create_table :add_ons do |t|
    	t.string     :name
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
