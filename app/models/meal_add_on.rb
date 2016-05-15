class MealAddOn < ActiveRecord::Base
	belongs_to :meal
	belongs_to :add_on
end
