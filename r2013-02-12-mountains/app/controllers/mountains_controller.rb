class MountainsController < ApplicationController
  def index
    @mountains = Mountain.all
  end
  def new
  end
  def create

    Mountain.create(params[:mountain])
    redirect_to(mountains_path)
  end
  def show
    @mountain = Mountain.find(params[:id])
  end
  def destroy
    mountain = Mountain.find(params[:id])
    planet.delete
    redirect_to(planets_path)
  end
end