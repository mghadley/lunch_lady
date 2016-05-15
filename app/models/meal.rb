class Meal < ActiveRecord::Base
	has_many :meal_dishes
	has_many :meal_add_ons
	has_many :dishes, through: :meal_dishes
	has_many :add_ons, through: :meal_add_ons
	accepts_nested_attributes_for :dishes
end
