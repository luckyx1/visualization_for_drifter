class LocationsController < ApplicationController
  before_action :set_location, only: [:show, :edit, :update, :destroy]
  skip_before_filter  :verify_authenticity_token

  def purge
    Location.delete_all
    redirect_to locations_path()
  end


  # GET /locations
  # GET /locations.json
  def index
    @locations = Location.all
    respond_to do |format|
      format.html
      format.csv { send_data @locations.to_csv }
      format.xls { send_data @locations.to_csv(col_sep: "\t") }
    end
  end

  # GET /locations/1
  # GET /locations/1.json
  def show
  end

  # GET /locations/new
  def new
    @location = Location.new
  end

  # GET /locations/1/edit
  def edit
  end

  # POST /locations
  # POST /locations.json
  def create
    @location = Location.new(location_params)

    respond_to do |format|
      if @location.save
        format.html { redirect_to @location, notice: 'Location was successfully created.' }
        format.json { render action: 'show', status: :created, location: @location }
      else
        format.html { render action: 'new' }
        format.json { render json: @location.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /locations/1
  # PATCH/PUT /locations/1.json
  def update
    respond_to do |format|
      if @location.update(location_params)
        format.html { redirect_to @location, notice: 'Location was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @location.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /locations/1
  # DELETE /locations/1.json
  def destroy
    @location.destroy
    respond_to do |format|
      format.html { redirect_to locations_url }
      format.json { head :no_content }
    end
  end

  def drifter
    if params[:val].present?
      @id = params[:id]
      @l0 = Location.find_all_by_drifter_name("Drifter #"+@id.to_s)
    elsif params[:id].present?
      @id = params[:id]
      @specific = true
      @l = Location.find_all_by_drifter_name("Drifter #"+@id.to_s)
      @l0 = @l.last
    else
      @l0 = Location.all
    end
  end

  def simulation
    @l0 = Location.all
  end

  def menu
    p "in menu"
    if params.to_s.include? "checkbox"
      session[:drifter]=[]
      params.each {|key, value| 
      if "#{key}".include? "checkbox"
        #p "#{key}".last(2).to_s
        session[:drifter].push "#{key}".last(1).to_i
      end }
    end
    p session[:drifter]
  end

  def history
    @l0 = Location.all
  end

  def live
    if params[:val].present?
      @id = params[:id]
      @l0 = Location.find_all_by_drifter_name("Drifter #"+@id.to_s)
    elsif params[:id].present?
      @id = params[:id]
      @specific = true
      @l = Location.find_all_by_drifter_name("Drifter #"+@id.to_s)
      @l0 = @l.last
    elsif params[:action] =="live"
      @l0 = Location.first
    else
      @l0 =Location.all
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_location
      @location = Location.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def location_params
      params.permit( :latitude, :longitude, :time, :valid_input, :gps_speed, :drifter_name)
    end
end
