class LocationsController < ApplicationController
  def show
    @locations = Location.all
  end

  def new
  end

  def update
  end

  def delete
  end

  def index
    @locations = Location.all
  end
end
