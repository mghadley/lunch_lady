class AddOn < ActiveRecord::Base
	has_many :meal_add_ons
	has_many :meals, through: :meal_add_ons
end
