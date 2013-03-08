class DestinationsController < ApplicationController
  before_filter :ensure_logged_in
  def index

 end
 def new
  @destinations = Destination.new
 end
  end
