class AlbumsController < ApplicationController
  def create
    album_params = params.slice(:title, :artist_id)
    if album = Album.create(album_params)
      respond_to do |format|
        format.json { render json: album.as_json }
      end
    else
      # handle error here
    end
  end

  def show
    album_id = params[:id]
    respond_to do |format|
      format.json { render json: Album.find(album_id).as_json }
    end
  end

  def index
    albums = Album.all
    respond_to do |format|
      format.json { render json: {albums: albums}.as_json }
    end
  end

  def destroy
  end

  def update
  end

end