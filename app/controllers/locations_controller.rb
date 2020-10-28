class LocationsController < ApplicationController

  def show
    @location = Location.find(params[:id])
  end

  def new
    @location = Location.create
  end

  def update
  end

  def delete
  end

  def index
    @locations = Location.all
  end

  def create
    @location = Location.new(location_params)
    @location.user = current_user
    @location.save
    if @location.save
      redirect_to location_path(@location)
    else
      render :new
    end
  end

  private

  def location_params
    params.require(:location).permit(:name, :photos, :postcode, :description)
  end
end
