class SongsController < ApplicationController
  before_filter :check_if_admin, :only => [:new, :create, :edit, :update]
  def index
    @songs = Song.all
  end
  def show
    @song = Song.find(params[:id])
  end
  def new
    @song = Song.new
  end
  def create
    @song = Song.new(params[:song])
    if @song.save
      redirect_to(songs_path)
    else
      render :new
    end
  end
  def edit
    @song = Song.find(params[:id])
    render :new
  end
  def update
    @song = Song.find(params[:id])
    if @song.update_attributes(params[:song])
      redirect_to(songs_path)
    else
      render :new
    end
  end
  def purchase
    @song = Song.find(params[:id])
  end
  def bought
    @song = Song.find(params[:id])
    cost = @song.cost
    if @song.update_attributes(params[:song])
      @auth.balance = @auth.balance - cost
      @auth.playlists
      @auth.save
      redirect_to(playlists_path)
    else
      render :purchase
    end
  end
   def refund
    @song = Song.find(params[:id])
  end
  def refunded
    @song = Song.find(params[:id])
    if @song.in?(@auth.playlist_songs)
      cost = (@song.cost * 0.7)
      @auth.balance = @auth.balance + cost
      @auth.save
      @auth.playlists.each do |playlist|
        playlist.songs.delete(@song)
      end
    end
      redirect_to(playlists_path)
  end
   def destroy
    song = Song.find(params[:id])
    song.delete
    redirect_to(songs_path)
  end
  def songs
    @song = Song.find(params[:id])
    redirect_to(songs_path)
  end
end
