class SongsController < ApplicationController
  def index
    @songs = Song.all
  end

  def show
    redirect_to root_path
  end

  def new
    @songs ||= @songs = Song.all
    @song = Song.new
  end

  def edit
    @song = Song.find(params[:id])
  end

  def create
    @song = Song.new(:title => params[:title])
    @song.file = params[:file]
    if @song.save
      redirect_to(songs_url)
      #head 200
    else
      render :action => "new"
    end
  end

  def update
    @song = Song.find(params[:id])

    if @song.update_attributes(params[:song])
      redirect_to(@song, :notice => 'Asset was successfully updated.')
    else
      render :action => "edit"
    end
  end

  def destroy
    @song = Song.find(params[:id])
    @song.destroy

    redirect_to(songs_url)
  end
end
