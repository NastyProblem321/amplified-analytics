class ManufacturersController < ApplicationController
  
  before_filter :authenticate_user!
  
  # GET /manufacturers
  # GET /manufacturers.xml
  def index
    @manufacturers = Manufacturer.paginate :page => params[:page], :order => 'name ASC', :per_page => 20

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @manufacturers }
    end
  end

  # GET /manufacturers/1
  # GET /manufacturers/1.xml
#  def show
#    @manufacturer = Manufacturer.find(params[:id])
#
#    respond_to do |format|
#      format.html # show.html.erb
#      format.xml  { render :xml => @manufacturer }
#    end
#  end

  # # GET /manufacturers/new
  # # GET /manufacturers/new.xml
  # def new
  #   @manufacturer = Manufacturer.new
  # 
  #   respond_to do |format|
  #     format.html # new.html.erb
  #     format.xml  { render :xml => @manufacturer }
  #   end
  # end
  # 
  # # GET /manufacturers/1/edit
  # def edit
  #   @manufacturer = Manufacturer.find(params[:id])
  # end
  # 
  # # POST /manufacturers
  # # POST /manufacturers.xml
  # def create
  #   @manufacturer = Manufacturer.new(params[:manufacturer])
  # 
  #   respond_to do |format|
  #     if @manufacturer.save
  #       flash[:notice] = 'Manufacturer was successfully created.'
  #       format.html { redirect_to(@manufacturer) }
  #       format.xml  { render :xml => @manufacturer, :status => :created, :location => @manufacturer }
  #     else
  #       format.html { render :action => "new" }
  #       format.xml  { render :xml => @manufacturer.errors, :status => :unprocessable_entity }
  #     end
  #   end
  # end
  # 
  # # PUT /manufacturers/1
  # # PUT /manufacturers/1.xml
  # def update
  #   @manufacturer = Manufacturer.find(params[:id])
  # 
  #   respond_to do |format|
  #     if @manufacturer.update_attributes(params[:manufacturer])
  #       flash[:notice] = 'Manufacturer was successfully updated.'
  #       format.html { redirect_to(@manufacturer) }
  #       format.xml  { head :ok }
  #     else
  #       format.html { render :action => "edit" }
  #       format.xml  { render :xml => @manufacturer.errors, :status => :unprocessable_entity }
  #     end
  #   end
  # end
  # 
  # # DELETE /manufacturers/1
  # # DELETE /manufacturers/1.xml
  # def destroy
  #   @manufacturer = Manufacturer.find(params[:id])
  #   @manufacturer.destroy
  # 
  #   respond_to do |format|
  #     format.html { redirect_to(manufacturers_url) }
  #     format.xml  { head :ok }
  #   end
  # end
end
