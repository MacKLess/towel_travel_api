class DestinationsController < ApplicationController

  def index
    planet = params[:planet]
    location = params[:location]
    if planet
      @destinations = Destination.search_planet(planet)
    elsif location
      @destinations = Destination.search_location(location)
    else
      @destinations = Destination.all
    end
    json_response(@destinations)
  end

  def show
    @destination = Destination.find(params[:id])
    json_response(@destination)
  end

  def create
    @destination = Destination.create!(destination_params)
    json_response(@destination, :created)
  end

  def update
    @destination = Destination.find(params[:id])
    if @destination.update!(destination_params)
      render status: 200, json: {
        message: "Your destination has been updated successfully!"
      }
    end
  end

  def destroy
    @destination = Destination.find(params[:id])
    if @destination.destroy!
      render status: 200, json: {
        message: "This planet has been destroyed to make way for a hyperspatial express bypass."
      }
    end
  end

private
  def destination_params
    params.permit(:planet, :location, :locals, :transportation)
  end
end
