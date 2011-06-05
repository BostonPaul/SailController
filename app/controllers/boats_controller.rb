class BoatsController < ApplicationController
  # GET /boats
  # GET /boats.xml
  def index
    @boats = Boat.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @boats }
    end
  end

  # GET /boats/1
  # GET /boats/1.xml
  def show
    @boat = Boat.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @boat }
    end
  end

  # GET /boats/new
  # GET /boats/new.xml
  def new
    @boat = Boat.new
    @boat_types = BoatType.all.map {|bt| [bt.name, bt.id]}
    @sails = Sail.all.map {|bt| [bt.number, bt.id]}
    @equipments = Equipment.all.map {|bt| [bt.prod_number, bt.id]}

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @boat }
    end
  end

  # GET /boats/1/edit
  def edit
    @boat = Boat.find(params[:id])
  end

  # POST /boats
  # POST /boats.xml
  def create
      eqs = []
      puts params
      params[:boat][:equipments].each do |i|
          eqs << Equipment.find(i)
      end
      params[:boat][:equipments] = eqs
      @boat = Boat.new(params[:boat])

    respond_to do |format|
      if @boat.save
        format.html { redirect_to(@boat, :notice => 'Boat was successfully created.') }
        format.xml  { render :xml => @boat, :status => :created, :location => @boat }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @boat.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /boats/1
  # PUT /boats/1.xml
  def update
    @boat = Boat.find(params[:id])

    respond_to do |format|
      if @boat.update_attributes(params[:boat])
        format.html { redirect_to(@boat, :notice => 'Boat was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @boat.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /boats/1
  # DELETE /boats/1.xml
  def destroy
    @boat = Boat.find(params[:id])
    @boat.destroy

    respond_to do |format|
      format.html { redirect_to(boats_url) }
      format.xml  { head :ok }
    end
  end
end
