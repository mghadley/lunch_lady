class MealsController < ApplicationController

	def new
		@meal = Meal.new(wallet: rand(7.0..15.0).round(2))
	end

	def create
		@meal = Meal.new(safe_params)
		@meal.add_ons.each do |add_on, value|
			@meal.add_ons.delete(add_on) if value == "0"
		end
		@meal.main_dish_price = Meal.main_dishes[@meal.main_dish.to_sym][:price]
		@meal.side_dish_1_price = Meal.side_dishes[@meal.side_dish_1.to_sym][:price]
		@meal.side_dish_2_price = Meal.side_dishes[@meal.side_dish_2.to_sym][:price]
		@meal.add_ons_price = add_ons_price_total
		@meal.final_price = final_price_total
		if @meal.save	
			if @meal.final_price <= @meal.wallet
				redirect_to meal_path(id: @meal.id)
			else
				flash[:danger] = "Looks like you tried to spend more money than you had. Try again!"
				redirect_to root_path
			end
		else
			render body: YAML::dump(safe_params)
		end
	end

	def show
		@meal = Meal.find(params[:id])
	end

	private

	def safe_params
		params.require(:meal).permit(:wallet, :main_dish, :side_dish_1, :side_dish_2, add_ons: [:extra_ketchup, :ranch_dressing, :fry_sauce, :special_sauce])
	end

	def add_ons_price_total
		price = 0
		@meal.add_ons.each do |add_on, value|
			price += Meal.add_ons[add_on.to_sym][:price]
		end
		price
	end

	def final_price_total
		price = @meal.main_dish_price + @meal.side_dish_1_price + @meal.side_dish_2_price + @meal.add_ons_price
	end

	end
