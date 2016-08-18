class AnnotationsController < ApplicationController
  before_action :set_annotation, only: [:show, :edit, :update, :destroy]

  # GET /annotations
  # GET /annotations.json
  def index
    @annotations = Annotation.all
  end

  # GET /annotations/1
  # GET /annotations/1.json
  def show
  end

  # GET /annotations/new
  def new
    @annotation = Annotation.new
  end

  # GET /annotations/1/edit
  def edit
  end

  # POST /annotations
  # POST /annotations.json
  def create
    @annotation = Annotation.new(annotation_params)

    respond_to do |format|
      if @annotation.save
        format.html { redirect_to @annotation, notice: 'Annotation was successfully created.' }
        format.json { render :show, status: :created, location: @annotation }
      else
        format.html { render :new }
        format.json { render json: @annotation.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /annotations/1
  # PATCH/PUT /annotations/1.json
  def update
    respond_to do |format|
      if @annotation.update(annotation_params)
        format.html { redirect_to @annotation, notice: 'Annotation was successfully updated.' }
        format.json { render :show, status: :ok, location: @annotation }
      else
        format.html { render :edit }
        format.json { render json: @annotation.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /annotations/1
  # DELETE /annotations/1.json
  def destroy
    @annotation.destroy
    respond_to do |format|
      format.html { redirect_to annotations_url, notice: 'Annotation was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_annotation
      @annotation = Annotation.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def annotation_params
      params.require(:annotation).permit(:document_id, :verbation, :user_id, :entity_id, :hypothesis_date, :hypothesis_annotation_id, :hypothesis_user)
    end
end
