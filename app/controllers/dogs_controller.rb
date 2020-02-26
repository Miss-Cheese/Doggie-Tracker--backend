class DogsController < ApplicationController

    def index
        dogs = Dog.all
        render json: dogs
    end

    def create
        dog = Dog.create!(dog_params)
        render json: dog, status: :ok
    end

    private
    def dog_params
        params.require(:dog).permit(:user_id, :name)
    end

end
