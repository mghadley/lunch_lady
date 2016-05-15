class MealsController < ApplicationController

	def new
		@meal = Meal.new
	end

	def create
		@meal = Meal.new(safe_params)
		if @meal.save
			render body: YAML::dump(safe_params[:main_dish_attributes])
			# @meal.dishes = safe_params[:main_dish][:name]
			# redirect_to root_path
		else
		 
		end
	end

	def show
	end

	private

	def safe_params
		params.require(:meal).permit(:main_dish_attributes)
	end

end
