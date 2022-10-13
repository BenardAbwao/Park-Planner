class ParksController < ApplicationController

    def index
        parks = Park.all
        render json: parks 
    end

    def show
        parks = Park.find(params[:id])
        render json: parks, include: :campsites
      end

    def create
        park = Park.create!(park_params)
        render json: park
    end
      
    private
     
    def park_params
          params.permit(:image, :name, :location, :info, :website)
      
    end

end
