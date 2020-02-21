class WalksController < ApplicationController

    def index
        walks = Walk.all
        render json: walks, status: :ok
    end

    def create
        walk = Walk.create!(walk_params)
        render json: walk, status: :ok
    end

    private
    def walk_params
        params.require(:walk).permit(:dog_id, :start_time, :finish_time, :pee, :poop)
    end

end
