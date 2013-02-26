class PlaylistsController < ApplicationController
  before_filter :check_if_logged_in
  def index
    @playlists = @auth.playlists.order(:name)
  end
  def show
    @playlist = Playlist.find(params[:id])
  end
  def new
    @playlist = Playlist.new
  end
  def create
    @playlist = Playlist.new(params[:playlist])
    if @playlist.save
      redirect_to(playlists_path)
    else
      render :new
    end
  end
  def edit
    @playlist = Playlist.find(params[:id])
    render :new
  end
  def destroy
    playlist = Playlist.find(params[:id])
    playlist.delete
    render :show
  end
  def update
    @playlist = Playlist.find(params[:id])
    if @playlist.update_attributes(params[:playlist])
      redirect_to(playlists_path)
    else
      render :new
    end
  end
  def deletesong
    song = Playlist.find(params[:song])
    @playlists = Playlist.all
    @playlists.each do |playlist|
      playlist.delete_if {|eachsong| eachsong == song}
    end
  end

   private
  def check_if_logged_in
    redirect_to(root_path) if @auth.nil? && !@auth.is_admin
  end
end