class WeightsController < ApplicationController

    def index
        weights = Weight.all
        render json: weights, status: :ok
    end

    def create
        weight = Weight.create!(weight_params)
        render json: weight, status: :ok
    end

    private
    def weight_params
        params.require(:weight).permit(:dog_id, :amount, :date)
    end

end
