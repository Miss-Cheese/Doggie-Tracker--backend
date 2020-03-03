class DatapointsController < ApplicationController

    def index
        datapoints = Datapoint.all
        render json: datapoints, status: :ok
    end

    def create
        datapoint = Datapoint.create!(datapoint_params)
        render json: datapoint, status: :ok
    end

    private
    def datapoint_params
        params.require(:datapoint).permit(:walk_id, :latitude, :longitude)
    end

end
