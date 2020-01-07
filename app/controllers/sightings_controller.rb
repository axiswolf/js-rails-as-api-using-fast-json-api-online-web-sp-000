class SightingsController < ApplicationController
  def index
    sightings = Sighting.all
    render json: SightingSerializer.new(sighting)
  end

  def show
    # @sighting = Sighting.find(params[:id])
    # render json: @sighting.to_json(:include => {
    #   :bird => {
    #     :only =>[:name, :species]},
    #     :location => {:only =>[:latitude, :longitude]}},
    #     :except => [:updated_at])
    sighting = Sighting.find(params[:id])
    render json: SightingSerializer.new(sighting)
  end
end
