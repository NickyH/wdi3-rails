class ArtsController < ApplicationController
  def index
    @arts = Art.all
  end
  def create
    art = Art.create(params[:art])
    redirect_to(art)
  end
  def new
    @art = Art.new
  end
  def edit
    @art = Art.find(params[:id])
  end
  def show
    @art = Art.find(params[:id])
  end
  def update
    art = Art.find(params[:id])
    art.update_attributes(params[:art])
    redirect_to(art)
  end
  def destroy
    art = Art.find(params[:id])
    art.delete
    redirect_to(art_path)
  end
end

