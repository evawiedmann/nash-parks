class ParksController < ApplicationController

  def index
    @parks = Park.search(params[:name])
    if params[:random]
      json_response(@parks.random)
    else
      json_response(@parks)
    end
  end

  def show
    @park = Park.find(params[:id])
    json_response(@park)
  end

  def create
    @park = Park.create(park_params)
    json_response(@park)
  end

  def update
    @park = Park.find(params[:id])
    if @quote.update!(park_params)
      render status: 200, json: {
        message: "This park has been updated successfully."
      }
    end
  end

  def destroy
    @park = Park.find(params[:id])
    if @quote.destroy!
      render status: 200, json: {
        message: "This park has been destroyed successfully."
      }
    end
  end

  private

  def park_params
    params.permit(:name, :city, :state)
  end
end
