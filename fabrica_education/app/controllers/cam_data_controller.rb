class CamDataController < ApplicationController
  before_action :set_cam_datum, only: [:show, :edit, :update, :destroy]

  # GET /cam_data
  # GET /cam_data.json
  def index
    @cam_data = CamDatum.all
  end

  # GET /cam_data/1
  # GET /cam_data/1.json
  def show
    @data = Datum.find(params[:datum_id])
  end

  # GET /cam_data/new
  def new
    @cam_datum = CamDatum.new
  end

  # GET /cam_data/1/edit
  def edit
  end

  # POST /cam_data
  # POST /cam_data.json
  def create
    @cam_datum = CamDatum.new(cam_datum_params)

    respond_to do |format|
      if @cam_datum.save
        format.html { redirect_to @cam_datum, notice: 'Cam datum was successfully created.' }
        format.json { render :show, status: :created, location: @cam_datum }
      else
        format.html { render :new }
        format.json { render json: @cam_datum.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /cam_data/1
  # PATCH/PUT /cam_data/1.json
  def update
    respond_to do |format|
      if @cam_datum.update(cam_datum_params)
        format.html { redirect_to @cam_datum, notice: 'Cam datum was successfully updated.' }
        format.json { render :show, status: :ok, location: @cam_datum }
      else
        format.html { render :edit }
        format.json { render json: @cam_datum.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /cam_data/1
  # DELETE /cam_data/1.json
  def destroy
    @cam_datum.destroy
    respond_to do |format|
      format.html { redirect_to cam_data_url, notice: 'Cam datum was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_cam_datum
      @cam_datum = CamDatum.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def cam_datum_params
      params.require(:cam_datum).permit(:datum_id, :path_data, :slicer_id, :print_time, :name)
    end
end
