class SongsController < ApplicationController
  def create
    song_params = params.slice(:title, :artist_id, :album_id)
    if song = Song.create(song_params)
      respond_to do |format|
        format.json { render json: song.as_json }
      end
    else
      #we have an error, respond here
    end
  end

  def show
    song_id = params[:id]
    respond_to do |format|
      format.json { render json: Artist.find(song_id).as_json }
    end
  end

  def index
    songs = Song.all
    respond_to do |format|
      format.json { render json: {songs: songs}.as_json }
    end
  end

  def destroy
  end

  def update
  end

end
