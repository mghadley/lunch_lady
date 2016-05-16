class MealsController < ApplicationController

	def new
		@meal = Meal.new
		@meal.set_attr
	end

	def create
		@meal = Meal.new
		if @meal.save
			# render body: YAML::dump(params)
			@mealdish = MealDish.new(meal_id: @meal.id, dish_id: safe_params[:main_dish][:name].id) 
			@mealdish.save
			redirect_to root_path
		else
		 
		end
	end

	def show
	end

	private

	def safe_params
		params.require(:meal).permit!
	end

end
