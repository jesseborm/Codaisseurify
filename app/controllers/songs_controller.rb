class SongsController < ApplicationController
  # from book stefan wintermeyer
  before_action :set_artist
  before_action :set_song, only: [:show, :edit, :update, :destroy]
  # Why can't these be here?
  # respond_to :html
  # respond_to :js

  def index
  end

  def new
    # artist = Artist.find(params[:artist_id])
    @song = Song.new
    # from book  wintermeyer:
    # @song = artist.songs.build
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
  #   # from book
    # @song = @artist.songs.build(song_params)
    # @song.save
    @song = Song.create(song_params.merge(artist_id: params[:artist_id]))
    respond_to do |format|
      format.html { redirect_to artist_path(@artist) }
      format.js
    end

    # redirect_to @song.artist
  #   # notice can go, because you can see if it was successful, but still want to try out where it shows and how to implement it.
  #   , notice: "Song successfully added to " + @song.artist.name + "!"
  end

  def destroy
    @song.destroy
    # Is the respond_to block optional when using partials and remote: true??
    respond_to do |format|
      format.html { redirect_to artist_path(@artist) }
      format.js
    end
    # redirect_back(fallback_location: root_path)
  end

  private

  def set_artist
    @artist = Artist.find(params[:artist_id])
  end

  def set_song
    @song = Song.find(params[:id])
  end


  def song_params
    params.require(:song).permit(:title, :album, :year, :artist_id)
  end
end
