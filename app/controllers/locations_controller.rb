class LocationsController < ApplicationController
  before_action :set_location, only: [:show, :edit, :update, :destroy]

  # GET /locations
  # GET /locations.json
  def index
    @locations = Location.all
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

  def test
    # @l1 = Location.where('id < ?',65)
    # @l2 = Location.where('id > ? AND id < ?',65,130)
    # @l3 = Location.where('id > ? AND id < ?',130,195)
    # @l4 = Location.where('id > ? AND id < ?',195,260)
    # @l5 = Location.where('id > ? AND id < ?',260,325)
    # @l6 = Location.where('id > ? AND id < ?',325,390)
    # @l7 = Location.where('id > ? AND id < ?',390,455)
    # @l8 = Location.where('id > ? AND id < ?',455,520)
    # @l9 = Location.where('id > ? AND id < ?',520,585)
    # @l10 = Location.where('id > ? AND id < ?',585,650)
    # @l11 = Location.where('id > ? AND id < ?',650,715)
    # @l12 = Location.where('id > ? AND id < ?',715,780)
    # @l13 = Location.where('id > ? AND id < ?',780,845)
    # @l14 = Location.where('id > ? AND id < ?',845,910)
    # @l15 = Location.where('id > ? AND id < ?',910,975)
    # @l16 = Location.where('id > ? AND id < ?',975,1040)
    # @l17 = Location.where('id > ? AND id < ?',1040,1105)
    # @l18 = Location.where('id > ? AND id < ?',1105,1170)
    # @l19 = Location.where('id > ? AND id < ?',1170,1235)
    # @l20 = Location.where('id > ? AND id < ?',1235,1300)
    # @l21 = Location.where('id > ? AND id < ?',1300,1365)
    # @l0 = Location.where('id <?',20)
    @l0 = Location.all
  end

  def simulation
    @l0 = Location.all

  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_location
      @location = Location.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def location_params
      params.require(:location).permit(:address, :latitude, :longitude, :time, :valid, :gps_speed, :drifter_name)
    end
end
