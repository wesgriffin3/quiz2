class PlanetsController < ApplicationController
  def index
    @planets = Planet.all
  end

  def new
    @planet = Planet.new
  end

  def create
    Planet.create(planet_params)
    redirect_to root_path
  end

  private

  def planet_params
    params.require(:planet).permit(:name, :description)
  end
end