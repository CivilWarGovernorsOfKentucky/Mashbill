require 'tei_annotator'
require 'text_transporter'
class DocumentsController < ApplicationController
  before_action :set_document, only: [:show, :edit, :update, :destroy]

  # GET /documents
  # GET /documents.json
  def index
    @documents = Document.all
  end

  # GET /documents/1
  # GET /documents/1.json
  def show
    @tei = TextTransporter.new.fetch(@document.cwgk_id)
  end

  # GET /documents/new
  def new
    @document = Document.new
  end

  # GET /documents/1/edit
  def edit
  end

  # POST /documents
  # POST /documents.json
  def create
    @document = Document.new(document_params)

    respond_to do |format|
      if @document.save
        format.html { redirect_to @document, notice: 'Document was successfully created.' }
        format.json { render :show, status: :created, location: @document }
      else
        format.html { render :new }
        format.json { render json: @document.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /documents/1
  # PATCH/PUT /documents/1.json
  def update
    respond_to do |format|
      if @document.update(document_params)
        format.html { redirect_to @document, notice: 'Document was successfully updated.' }
        format.json { render :show, status: :ok, location: @document }
      else
        format.html { render :edit }
        format.json { render json: @document.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /documents/1
  # DELETE /documents/1.json
  def destroy
    @document.destroy
    respond_to do |format|
      format.html { redirect_to documents_url, notice: 'Document was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  def mark_complete
    @document = Document.find(params[:id])
    @document.completed = true
    @document.save!
    record_deed("mark_complete")
    update_tei if TextTransporter.enabled?
    redirect_to dashboard_path
  end

  def needs_review
    @document = Document.find(params[:id])
    @document.needs_review = true
    @document.save!
    record_deed("needs_review")
    #update_tei if TextTransporter.enabled?
    redirect_to bycwgkid_path(@document.cwgk_id)
  end

  def reviewed
    @document = Document.find(params[:id])
    @document.needs_review = false
    @document.save!
    record_deed("reviewed")
    #update_tei if TextTransporter.enabled?
    redirect_to bycwgkid_path(@document.cwgk_id)
  end

  def record_deed(deed_type)
    deed = Deed.new
    deed.document = @document
    if deed_type=="mark_complete"
      deed.deed_type = Deed::DOC_COMPLETED
    elsif deed_type=="needs_review"
      deed.deed_type = Deed::NEEDS_REVIEW
    elsif deed_type=="reviewed"
      deed.deed_type = Deed::REVIEWED
    end
    deed.user = current_user
    deed.save!
  end

  def search
#    @documents = Document.basic_search(cwgk_id: params["q"])
    @documents = Document.search_or_create(params["q"]).sort { |a,b| a.cwgk_id <=> b.cwgk_id }
  end

  def search_by_name
    @documents = Document.basic_search(title: params["q"])
    render :search
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_document
      @document = Document.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def document_params
      params.require(:document).permit(:cwgk_id, :title, :completed)
    end
    
    def update_tei
      annotator = TeiAnnotator.new(TextTransporter.new)
      annotator.apply_annotations(@document, current_user)
    end

end
