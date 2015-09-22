class ArtistReviewsController < ApplicationController

  def create
    @artist = Artist.find(params[:artist_id])
    @artistreview = @artist.artistreviews.create(artistreview_params)
    redirect_to artist_path(@artist)
  end

  def edit
  end

  def destroy
  end

  private
  def artistreview_params
    params.require(:artistreview).permit(:commenter, :body)
  end
end
