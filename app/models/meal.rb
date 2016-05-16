class Meal < ActiveRecord::Base
	attr_accessor :main_dishes, :side_dishes, :add_ons

	def set_attr
		@main_dishes = {
			pizza: {description: 'Delicious, cheesey, greasy, bread', price: 3.50, calories: 300, carbs: 100, protein: 20, fat: 50, sugar: 10},
			pasta: {description: "Don't act like you can tell it's not authentic", price: 7, calories: 300, carbs: 100, protein: 30, fat: 40, sugar: 5},
			burger: {description: "If you're American, you should just orer this", price: 8, calories: 500, carbs: 150, protein: 75, fat: 50, sugar:10},
			sandwich: {description: "It's like a burger but not as good", price: 6, calories: 200, carbs: 150, protein: 40, fat: 20, sugar: 5}
		}

		@side_dishes = {
			fries: {description: "If you're getting a burger, you'll need these too", price: 2, calories: 100, carbs: 75, protein: 0, fat: 50, sugar: 0},
			milk_shake: {description: "If you're getting fries, you'll want to dip them in this", price: 1.75, calories: 100, carbs: 50, protein: 10, fat: 30, sugar: 50},
			fried_pickles: {description: "So, so good", price: 2, calories: 50, carbs: 20, protein: 0, fat: 15, sugar: 0},
			salad: {description: "We felt obligated to include this", price: 3, calories: 0, carbs: 0, protein: 0, fat: 0, sugar: 0}
		}

		@add_ons = {
			extra_ketchup: {price: 0.5, calories: 20, carbs: 10, protein: 0, fat: 0, sugar: 10},
			ranch_dressing: {price: 0.5, calories: 25, carbs: 10, protein: 5, fat: 10, sugar: 10},
			fry_sauce: {price: 0.5, calories: 20, carbs: 15, protein: 5, fat: 0, sugar: 15},
			special_sauce: {price: 0.5, calories: 1000, carbs: 1000, protein: 1000, fat: 1000, sugar: 1000}
		}
	end
end
