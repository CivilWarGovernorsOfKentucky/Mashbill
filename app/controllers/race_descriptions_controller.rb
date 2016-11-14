class RaceDescriptionsController < ApplicationController
  before_action :set_race_description, only: [:show, :edit, :update, :destroy]

  # GET /race_descriptions
  # GET /race_descriptions.json
  def index
    @race_descriptions = RaceDescription.all
  end

  # GET /race_descriptions/1
  # GET /race_descriptions/1.json
  def show
  end

  # GET /race_descriptions/new
  def new
    @race_description = RaceDescription.new
  end

  # GET /race_descriptions/1/edit
  def edit
  end

  # POST /race_descriptions
  # POST /race_descriptions.json
  def create
    @race_description = RaceDescription.new(race_description_params)

    respond_to do |format|
      if @race_description.save
        format.html { redirect_to @race_description, notice: 'Race description was successfully created.' }
        format.json { render :show, status: :created, location: @race_description }
      else
        format.html { render :new }
        format.json { render json: @race_description.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /race_descriptions/1
  # PATCH/PUT /race_descriptions/1.json
  def update
    respond_to do |format|
      if @race_description.update(race_description_params)
        format.html { redirect_to @race_description, notice: 'Race description was successfully updated.' }
        format.json { render :show, status: :ok, location: @race_description }
      else
        format.html { render :edit }
        format.json { render json: @race_description.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /race_descriptions/1
  # DELETE /race_descriptions/1.json
  def destroy
    @race_description.destroy
    respond_to do |format|
      format.html { redirect_to race_descriptions_url, notice: 'Race description was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_race_description
      @race_description = RaceDescription.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def race_description_params
      params.require(:race_description).permit(:race_description)
    end
end
