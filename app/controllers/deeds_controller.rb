class DeedsController < ApplicationController
#  before_action :set_deed, only: [:show, :edit, :update, :destroy]

  PAGES_PER_SCREEN = 50

  def list
    condition = []

    if @user
      condition = ['user_id = ?', @user.id]
    end
    binding.pry
    @deeds = Deed.where(condition).order('created_at DESC').paginate :per_page => PAGES_PER_SCREEN
  end

  # GET /deeds
  # GET /deeds.json
  def index
    @deeds = Deed.all
  end

  # GET /deeds/1
  # GET /deeds/1.json
  def show
  end

  # GET /deeds/new
  def new
    @deed = Deed.new
  end

  # GET /deeds/1/edit
  def edit
  end

  # POST /deeds
  # POST /deeds.json
  def create


    @deed = Deed.new(deed_params)

    respond_to do |format|
      if @deed.save
        format.html { redirect_to @deed, notice: 'Deed was successfully created.' }
        format.json { render :show, status: :created, location: @deed }
      else
        format.html { render :new }
        format.json { render json: @deed.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /deeds/1
  # PATCH/PUT /deeds/1.json
  def update
    respond_to do |format|
      if @deed.update(deed_params)
        format.html { redirect_to @deed, notice: 'Deed was successfully updated.' }
        format.json { render :show, status: :ok, location: @deed }
      else
        format.html { render :edit }
        format.json { render json: @deed.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /deeds/1
  # DELETE /deeds/1.json
  def destroy
    @deed.destroy
    respond_to do |format|
      format.html { redirect_to deeds_url, notice: 'Deed was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_deed
      @deed = Deed.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def deed_params
      params.require(:deed).permit(:deed_type, :user_id, :document_id, :entity_id, :relationship_id)
    end
end
