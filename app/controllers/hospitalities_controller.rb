class HospitalitiesController < ApplicationController
  before_action :set_hospitality, only: [:show, :edit, :update, :destroy]

  # GET /hospitalities
  # GET /hospitalities.json
  def index
    @hospitalities = Hospitality.all
  end

  # GET /hospitalities/1
  # GET /hospitalities/1.json
  def show
  end

  # GET /hospitalities/new
  def new
    @hospitality = Hospitality.new
  end

  # GET /hospitalities/1/edit
  def edit
  end

  # POST /hospitalities
  # POST /hospitalities.json
  def create
    @hospitality = Hospitality.new(hospitality_params)

    respond_to do |format|
      if @hospitality.save
        format.html { redirect_to @hospitality, notice: 'Hospitality was successfully created.' }
        format.json { render :show, status: :created, location: @hospitality }
      else
        format.html { render :new }
        format.json { render json: @hospitality.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /hospitalities/1
  # PATCH/PUT /hospitalities/1.json
  def update
    respond_to do |format|
      if @hospitality.update(hospitality_params)
        format.html { redirect_to @hospitality, notice: 'Hospitality was successfully updated.' }
        format.json { render :show, status: :ok, location: @hospitality }
      else
        format.html { render :edit }
        format.json { render json: @hospitality.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /hospitalities/1
  # DELETE /hospitalities/1.json
  def destroy
    @hospitality.destroy
    respond_to do |format|
      format.html { redirect_to hospitalities_url, notice: 'Hospitality was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_hospitality
      @hospitality = Hospitality.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def hospitality_params
      params.require(:hospitality).permit(:day, :month, :year, :type_of_hospitality)
    end
end
