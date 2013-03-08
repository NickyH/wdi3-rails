class ItinerariesController < ApplicationController
  before_filter :ensure_logged_in
  def index
    @itineraries = @auth.itineraries
 end
 def new
  @itineraries = Itinerary.new
 end
  def create
    itinerary = Itinerary.create(params[:itinerary])
    @auth.itineraries << itinerary
    render :json => itinerary
  end
end