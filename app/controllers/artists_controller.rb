class ArtistsController < ApplicationController
  before_action :set_artist, only: [:show, :edit, :update, :destroy]

  def index
    @artists = Artists.all
  end

  def show; end

  def new
    @artist = Artist.new
  end

  def edit; end

  def update
    if @artist.update_attributes(artist_params)
      redirect_to @artist
    else
      render 'edit'
    end
  end

  def create
    @artist = artists.build(artist_params) #build????

    if @artist.save
      redirect_to @artist, notice: "Artist successfully created"
    else
      render :new
    end
  end

  def destroy
    @artist.destroy

    redirect_to artists_path #ROOT
  end

  private

  def set_artist
    @artist = Artist.find(params[:id])
  end

  def artist_params
    params.require(:artist).permit(:name, :quality, :image)
  end
end
