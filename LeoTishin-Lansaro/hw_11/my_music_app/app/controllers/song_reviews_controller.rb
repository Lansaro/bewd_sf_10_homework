class SongReviewsController < ApplicationController

  def create
    @song = Song.find(params[:song_id])
    @songreview = @song.songreviews.create(songreview_params)
    redirect_to song_path(@song)
  end

  def edit
  end

  def destroy
  end

  private
  def songreview_params
    params.require(:songreview).permit(:commenter, :body)
  end
end
