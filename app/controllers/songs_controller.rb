class SongsController < ApplicationController
 
  def index
    @songs = Song.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @songs }
    end
  end

  def edit
    @song = Song.find(params[:id])
    @song.update_attributes(params[:title])

    if @song.save
      redirect_to(songs_url)
    else
      render :action => "index"
    end
  end

  def create
    @song = Song.new(:title => params[:title])
    @song.file = params[:file]

    respond_to do |format|
      if @song.save 
        format.html { redirect_to(root_url, :notice => 'Song was successfully created.') }
        format.xml  { render :xml => @songs, :status => :created, :location => @songs }
      else
        format.html { render :action => "index" }
        format.xml  { render :xml => @songs.errors, :status => :unprocessable_entity }
      end
    end
  end

  def update
    @song = Song.find(params[:id])

    if @song.update_attributes(params[:title])
      redirect_to(@song, :notice => 'Song was successfully updated.')
    else
      redirect_to(root_path)
    end
  end

  def destroy
    @song = Song.find(params[:id])
    @song.destroy

    respond_to do |format|
      format.html { redirect_to(root_url) }
      format.xml  { head :ok }
    end
  end

end
