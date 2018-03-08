class ArtistsController < ApplicationController
  def create
    artist_fields = params.slice(:name)
    if artist = Artist.create(artist_fields)
      respond_to do |format|
        format.json { render json: artist.as_json }
      end
    else
      #TODO: error, unable to create artist :(
    end
  end

  def show
    artist_id = params[:id]
    respond_to do |format|
      format.json { render json: Artist.find(artist_id).as_json }
    end
  end

  def index
    artists = Artist.all
    respond_to do |format|
      format.json { render json: {artists: artists}.as_json }
    end
  end

  def destroy
  end

  def update
  end

end