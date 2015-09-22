class SongsController < ApplicationController
  def index
    @artist = Artists.find(params[:artist_id])
    @songs = @artist.songs
  end

  def show
    @song = get_song
  end

  def new
    @song = Song.new
  end

  def create
    @song = Song.new(song_params)
    if @song.save
      redirect_to songs_path
    else
      render "new"
    end
  end

  def edit
    @song = get_song
  end

  def update
    @song = get_song
    if @song.update(song_params)
      redirect_to songs_path, notice: "Song updated"
    else
      render 'edit'
    end
  end

  def destroy
    @song = get_song
    @song.destroy
    redirect_to songs_path
  end

  private

  def song_params
    params.require(:song).permit(:title, :genre)
  end

  def get_song
    Song.find(params[:id])
  end
end
