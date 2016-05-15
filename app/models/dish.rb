class Dish < ActiveRecord::Base
	has_many :meal_dishes
	has_many :dishes, through: :meal_dishes
end
