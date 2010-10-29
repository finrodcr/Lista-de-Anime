class AnimesController < ApplicationController
  # GET /animes
  # GET /animes.xml
  def index
    @animes = Anime.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @animes }
    end
  end

  # GET /animes/1
  # GET /animes/1.xml
  def show
    @anime = Anime.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @anime }
    end
  end

  # GET /animes/new
  # GET /animes/new.xml
  def new
    @anime = Anime.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @anime }
    end
  end

  # GET /animes/1/edit
  def edit
    @anime = Anime.find(params[:id])
  end

  # POST /animes
  # POST /animes.xml
  def create
    @anime = Anime.new(params[:anime])

    respond_to do |format|
      if @anime.save
        format.html { redirect_to(@anime, :notice => 'Anime was successfully created.') }
        format.xml  { render :xml => @anime, :status => :created, :location => @anime }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @anime.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /animes/1
  # PUT /animes/1.xml
  def update
    @anime = Anime.find(params[:id])

    respond_to do |format|
      if @anime.update_attributes(params[:anime])
        format.html { redirect_to(@anime, :notice => 'Anime was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @anime.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /animes/1
  # DELETE /animes/1.xml
  def destroy
    @anime = Anime.find(params[:id])
    @anime.destroy

    respond_to do |format|
      format.html { redirect_to(animes_url) }
      format.xml  { head :ok }
    end
  end
end
