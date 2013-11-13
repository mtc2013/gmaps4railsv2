class MappablesController < ApplicationController
  before_action :set_mappable, only: [:show, :edit, :update, :destroy]

  # GET /mappables
  # GET /mappables.json
  def index
    @mappables = Mappable.all
    @hash = Gmaps4rails.build_markers(@mappables) do |mappable, marker|
      marker.lat mappable.latitude
      marker.lng mappable.longitude
      marker.infowindow "You might provide a nice description in here"
     end
  end

  # GET /mappables/1
  # GET /mappables/1.json
  def show
  end

  # GET /mappables/new
  def new
    @mappable = Mappable.new
  end

  # GET /mappables/1/edit
  def edit
  end

  # POST /mappables
  # POST /mappables.json
  def create
    @mappable = Mappable.new(mappable_params)

    respond_to do |format|
      if @mappable.save
        format.html { redirect_to @mappable, notice: 'Mappable was successfully created.' }
        format.json { render action: 'show', status: :created, location: @mappable }
      else
        format.html { render action: 'new' }
        format.json { render json: @mappable.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /mappables/1
  # PATCH/PUT /mappables/1.json
  def update
    respond_to do |format|
      if @mappable.update(mappable_params)
        format.html { redirect_to @mappable, notice: 'Mappable was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @mappable.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /mappables/1
  # DELETE /mappables/1.json
  def destroy
    @mappable.destroy
    respond_to do |format|
      format.html { redirect_to mappables_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_mappable
      @mappable = Mappable.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def mappable_params
      params.require(:mappable).permit(:address, :longitude, :latitude)
    end
end
