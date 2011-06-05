class RegistrationsController < ApplicationController
  # GET /registrations
  # GET /registrations.xml
  def index
    @registrations = Registration.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @registrations }
    end
  end

  # GET /registrations/1
  # GET /registrations/1.xml
  def show
    @registration = Registration.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @registration }
    end
  end

  # GET /registrations/new
  # GET /registrations/new.xml
  def new
    @registration = Registration.new
    @regatta = Regattum.all.map {|r| [r.name,r.id]}
    @boats = Boat.all.map {|r| [r.name,r.id]}
    @skippers = User.all.map {|r| [r.name,r.id]}

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @registration }
    end
  end

  # GET /registrations/1/edit
  def edit
    @registration = Registration.find(params[:id])
    @regatta = Regattum.all.map {|r| [r.name,r.id]}
    @boats = Boat.all.map {|r| [r.name,r.id]}
    @skippers = User.all.map {|r| [r.name,r.id]}
  end

  # POST /registrations
  # POST /registrations.xml
  def create
      #Clone:
      #user
      #boat
      #crew
      
      #save them
      #use these ids for registration
      
      #Make a new boat, with data from the boat at this time
      #Save it along with the id's (user,boat,regattum id)
      
      boat = Boat.find(params[:registration][:boat_id])
      user = boat.user
      user_clone = user.clone
      user_clone.cloned_from user.id
      user_clone.save
      boat_clone = boat.clone
      boat_clone.user = user_blone
      boat_clone.cloned_from = boat.id
      eqs = boat.equipments
      eqs_clone = []
      eqs.each do |e|
          eqs_clone << e
      end
      eqs_clone.each do |e|
          e.save
      end
      boat_clone.equipments = eqs_clone
      
      sails = boat.sails
      sails_clone = []
      sails.each do |sail|
          sails_clone << sail.clone
      end
      sails_clone do |sail|
          sail.save
      end
      boat_clone.sails = sails_clone

      crews = boat.crews
      crews_clone = []
      crews.each do |crew|
          tmp = crew.clone
          tmp.cloned_from = crew.id
          crews_clone << tmp
    end
    
    crews_clone.each do |crew|
        crew.save
    end
    boat_clone.crews = crews_clone
    boat_clone.save
    crews_clone.each do |crew|
        tmp = crew.user.clone
        tmp.cloned_from = crew.user.id
        tmp.save
        crew.user = tmp
        crew.boat = boat_clone
        crew.save
    end
      
    @registration = Registration.new(params[:registration])

    respond_to do |format|
      if @registration.save
        format.html { redirect_to(@registration, :notice => 'Registration was successfully created.') }
        format.xml  { render :xml => @registration, :status => :created, :location => @registration }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @registration.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /registrations/1
  # PUT /registrations/1.xml
  def update
    @registration = Registration.find(params[:id])

    respond_to do |format|
      if @registration.update_attributes(params[:registration])
        format.html { redirect_to(@registration, :notice => 'Registration was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @registration.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /registrations/1
  # DELETE /registrations/1.xml
  def destroy
    @registration = Registration.find(params[:id])
    @registration.destroy

    respond_to do |format|
      format.html { redirect_to(registrations_url) }
      format.xml  { head :ok }
    end
  end
end
