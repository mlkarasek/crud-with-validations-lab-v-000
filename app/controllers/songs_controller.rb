class SongsController < ApplicationController

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
    @song = Song.create(author_params)
    if @song.valid?
      @song.save
    redirect_to song_path(@song)
  else
    render :new
  end
end 

  def edit
  end

  def update
  end

  def destroy
  end

  private

  def song_params
     params.require(:song).permit(:title, :artist_name, :released, :release_year, :genre)
   end
end
