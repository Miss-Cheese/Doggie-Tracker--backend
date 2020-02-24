class MealsController < ApplicationController

    def index
        meals = Meal.all
        render json: meals, status: :ok
    end

    def create
        meal = Meal.create!(meal_params)
        render json: meal, status: :ok
    end

    private
    def meal_params
        params.require(:meal).permit(:dog_id, :food, :meal_type, :datetime)
    end

end
