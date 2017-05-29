class SongsController < ApplicationController
  before_action :set_song, only: [:edit, :update]#, :destroy]

  def index
  end

  def new
    @artist = Artist.find(params[:artist_id])
    @song = Song.new
    # Line 11 works but not without the @artist params on line 10
    # @song = Song.new(artist_id: params[:artist_id])
    # @song = Song.new(song_params(artist_id: params[:artist_id]))
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

  # def create
  #   @song = Artist.songs.build(song_params) #build????
  #
  #   if @song.save
  #     redirect_to @song, notice: "Song successfully created"
  #   else
  #     render :new
  #   end
  # end

  def create
    # @artist = Artist.find(params[:artist_id])
    # @song = @artist.songs.create(song_params)
    @song = Song.create(song_params.merge(artist_id: params[:artist_id]))

    # redirect_to artist_path(@song.artist),
    redirect_to @song.artist,
    # notice can go, because you can see if it was successful, but still want to try out where it shows and how to implement it.
    notice: "Song successfully added to " + @song.artist.name + "!"
  end

  def destroy
    @artist = @song.artist_id
    # @song = Song.find(params[:id])
    # @artist = Artist.find(params[:artist_id])
    # @song = Song.find(params[:id].merge(artist_id: params[:artist_id]))
    # @song = Artist.song.find(params[:id])
    @song.destroy

    redirect_back(fallback_location: root_path)
  end

  private

  def set_song
    @song = Song.find(params[:id])
  end

  def song_params
    params.require(:song).permit(:title, :album, :year, :artist_id)
  end
end
