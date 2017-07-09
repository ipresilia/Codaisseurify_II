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
    @song = Song.new(song_params)

    if @song.save
      redirect_to @song, notice: "Song added"
    else
      render "new"
    end
  end

  def edit
    @song = Song.find(params[:id])
  end

  def update

  # KEEP GETTING ERROR
  #   ActiveRecord::AssociationTypeMismatch in SongsController#update
  # Artist(#70183690907040) expected, got "#<Artist:0x007fa9cfb78010>" which is an instance of String(#70183645782100)
  #
    @song = Song.find(params[:id])

    if @song.update_attributes(song_params)
      redirect_to @song, notice: "Song updated"
    else
      render "edit"
    end
  end

  def destroy
    @song = Song.find(params[:id])
    @song.destroy
    redirect_to songs_path
  end

  private

  def song_params
    params.require(:song).permit(:title, :release_date, :genre, :artwork, :album, :artist)
  end

end
