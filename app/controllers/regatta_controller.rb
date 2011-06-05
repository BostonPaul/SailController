class RegattaController < ApplicationController
  # GET /regatta
  # GET /regatta.xml
  def index
    @regatta = Regattum.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @regatta }
    end
  end

  # GET /regatta/1
  # GET /regatta/1.xml
  def show
    @regattum = Regattum.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @regattum }
    end
  end

  # GET /regatta/new
  # GET /regatta/new.xml
  def new
    @regattum = Regattum.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @regattum }
    end
  end

  # GET /regatta/1/edit
  def edit
    @regattum = Regattum.find(params[:id])
  end

  # POST /regatta
  # POST /regatta.xml
  def create
    @regattum = Regattum.new(params[:regattum])

    respond_to do |format|
      if @regattum.save
        format.html { redirect_to(@regattum, :notice => 'Regattum was successfully created.') }
        format.xml  { render :xml => @regattum, :status => :created, :location => @regattum }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @regattum.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /regatta/1
  # PUT /regatta/1.xml
  def update
    @regattum = Regattum.find(params[:id])

    respond_to do |format|
      if @regattum.update_attributes(params[:regattum])
        format.html { redirect_to(@regattum, :notice => 'Regattum was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @regattum.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /regatta/1
  # DELETE /regatta/1.xml
  def destroy
    @regattum = Regattum.find(params[:id])
    @regattum.destroy

    respond_to do |format|
      format.html { redirect_to(regatta_url) }
      format.xml  { head :ok }
    end
  end
end
