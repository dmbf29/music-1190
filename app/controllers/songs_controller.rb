class SongsController < ApplicationController

  # Complete the controller code using the correct params key?
  # HTTP request: GET /search?query=thriller
  # Routing in config/routes.rb: get "/search" => "songs#search"
  # def search
  #   @songs = Song.where(title: params[:query])
  #   @songs = Song.where('title ILIKE ?', "%#{params[:query]}%")
  #   raise
  # end

  # Complete the controller code using the correct params key?
  # HTTP request: GET /songs/named/thriller
  # Routing in config/routes.rb: get "/songs/named/:name" => "songs#search"
  def search
    @songs = Song.where(title: params[:name])
    @songs = Song.where('title ILIKE ?', "%#{params[:name]}%")
    raise
  end

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
    @song = Song.new(song_params)
    if @song.save
      redirect_to song_path(@song)
    else
      render :new, status: :unprocessable_entity
    end
  end

  def edit
    @song = Song.find(params[:id])
  end

  private

  def song_params
    params.require(:song).permit(:title, :year, :category)
  end
end
