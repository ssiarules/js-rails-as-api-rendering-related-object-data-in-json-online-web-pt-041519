class SightingsController < ApplicationController

  def index
  sightings = Sighting.all
  render json: sightings.to_json(include: [:bird, :location])
end
  def show
  sighting = Sighting.find_by(id: params[:id])
  render json: { id: sighting.id, bird: sighting.bird, location: sighting.location }
end
end
