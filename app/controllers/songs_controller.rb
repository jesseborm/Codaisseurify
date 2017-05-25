class SongsController < ApplicationController
  before_action :set_songs, only: [:edit, :update, :destroy]

  def index
    @songs = Artist.songs
  end

  def new
    @song = Artist.song.new
  end

  def edit
  end

  def update
    if @song.update_attributes(song_params)
      redirect_to @song.artist, notice: "Song successfully changed"
    else
      render 'edit'
    end
  end

  def create
    @song = Artist.songs.build(song_params) #build????

    if @song.save
      redirect_to @song, notice: "Song successfully created"
    else
      render :new
    end
  end

  def destroy

    redirect_back(fallback_location: root_path)
  end

  private

  def set_songs
    @song = Artist.song.find(params[:id])
  end

  def songs_params
    params.require(:songs).permit(:title, :album, :year, :artist_id)
  end
end
