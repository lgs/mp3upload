class SongsController < ApplicationController
  before_filter :load

  def edit
    # @song = Song.find(params[:id])
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
      render :action => "new"
    end
  end

  def destroy
    @song = Song.find(params[:id])
    @song.destroy

    respond_to do |format|
      format.js { render :json => {:name => 'John'} }
    end
    #redirect_to(songs_url)
  end

  private
  def load
    @songs = Song.all
    @song = Song.new
  end

end
