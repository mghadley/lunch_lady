# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)



#  type name description price calories carbs protein fat sugar

dish_arr = [
	['Main Dish', 'Pizza', 'Delicious, cheesey, greasy, bread', 3.50, 300, 100, 20, 50, 10],
	['Main Dish', 'Pasta', "Don't act like you can tell it's not authentic", 7, 300, 100, 30, 40, 5],
	['Main Dish', 'Burger', "If you're American, you should just orer this", 8, 500, 150, 60, 70, 5],
	['Main Dish', 'Sandwich', "It's like a burger but not as good", 6, 200, 250, 40, 20, 5],
	['Side Dish', 'Fries', "If you're getting a burger, you'll need these too", 2, 100, 75, 0, 50, 0],
	['Side Dish', 'Milk Shake', "If you're getting fries, you'll want to dip them in this", 1.75, 100, 50, 10, 30, 50],
	['Side Dish', 'Fried Pickles', "So, so good", 2, 50, 20, 0, 15, 0],
	['Side Dish', 'Salad', "We felt obliged to include this", 0,0,0,0,0,0]
]

# name price cal carbs protein fat sugar

add_on_arr = [
	['Extra Ketchup', 0.5, 20, 10, 0, 0, 10],
	['Ranch Dressing', 0.5, 25, 10, 5, 10, 10],
	['Fry Sauce', 0.5, 20, 15, 5, 0, 15],
	['Special Sauce', 0.5, 1000, 1000, 1000, 1000, 1000]
]

dish_arr.each do |i|
	Dish.find_or_create_by(
		category: i[0],
		name: i[1],
		description: i[2],
		price: i[3],
		calories: i[4],
		carbs: i[5],
		protein: i[6],
		fat: i[7],
		sugar: i[8]
		)
end

add_on_arr.each do |i|
	AddOn.find_or_create_by(
		name: i[0],
		price: i[1],
		calories: i[2],
		carbs: i[3],
		protein: i[4],
		fat: i[5],
		sugar: i[6] 
		)
end


