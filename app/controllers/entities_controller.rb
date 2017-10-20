require 'text_transporter'
class EntitiesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:set_entity, :show_viz, :data]
  before_action :set_entity, only: [:show, :edit, :update, :destroy]

  # GET /entities
  # GET /entities.json
  def index
    @entities = Entity.all
  end

  # GET /entities/1
  # GET /entities/1.json
  def show
    renderer = Redcarpet::Render::HTML.new(no_links: true, hard_wrap: true)
    @markdown = Redcarpet::Markdown.new(renderer, extensions = {})
    @relationships = @entity.relationships
    @documents = @entity.documents.page params[:page]
  end

  # GET /entities/new
  def new
    @entity = Entity.new
    @annotation = nil
    if params["annotation_id"]
      @annotation=Annotation.find(params[:annotation_id])
    end
    @entity.name = params[:verbatim]
  end

  # GET /entities/1/edit
  def edit
  end

  # POST /entities
  # POST /entities.json
  def create
    @entity = Entity.new(entity_params)
    @entity.user = current_user
    respond_to do |format|
      if @entity.save
        if params["annotation_id"]
          annotation = Annotation.find(params["annotation_id"])
          annotation.entity_id=@entity.id
          annotation.save
        end
        record_deed(Deed::ENTITY_CREATE)
        update_tei
        if annotation 
          format.html { redirect_to(bycwgkid_path(annotation.document.cwgk_id), notice: 'Entity was successfully created.') }
        else
          format.html { redirect_to(dashboard_url, notice: 'Entity was successfully created.') }
        end 
        format.json { render :show, status: :created, location: @entity }
      else
        format.html { render :new }
        format.json { render json: @entity.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /entities/1
  # PATCH/PUT /entities/1.json
  def update
    respond_to do |format|
      if @entity.update(entity_params)
        record_deed(Deed::ENTITY_EDIT)
        update_tei
        format.html { redirect_to @entity, notice: 'Entity was successfully updated.' }
        format.json { render :show, status: :ok, location: @entity }
      else
        format.html { render :edit }
        format.json { render json: @entity.errors, status: :unprocessable_entity }
      end
    end
  end

  def edit_bio
    @entity=Entity.find(params[:id])
  end

  def show_bio
    @entity=Entity.find(params[:id])
    renderer = Redcarpet::Render::HTML.new(no_links: true, hard_wrap: true)
    @markdown = Redcarpet::Markdown.new(renderer, extensions = {})
    render :layout => false
  end

  def show_metadata
    @entity=Entity.find(params[:id])
    render :layout => false
  end

  def show_viz
    @entity=Entity.find(params[:id])
    render :layout => false
  end

  def data
    @entity=Entity.where(:id => params[:id]).first
    @entity=Entity.find_by_ref_id(params[:id])

    data = {"nodes" => [], "links" => []}
    documents = []
    partners = []
    links = []
    data["nodes"] << {"id" => @entity.name, "group" => "central node", "link" => show_entity_url(@entity), "bio" => @entity.biography}
    @entity.relationships.each do |relationship|
      if relationship.entity_1 != @entity 
        partner = relationship.entity_1 
      else partner = relationship.entity_2 
      end
      unless relationship.document == nil 
        document_title = relationship.document.title.chomp(" · Civil War Governors of Kentucky: Early Access")
        link = "http://discovery.civilwargovernors.org/document/" + relationship.document.cwgk_id
      else document_title = "undefined document" 
      end
      data["nodes"] << {"id" => partner.name, "group" => partner.entity_type, "link" => show_entity_url(partner), "bio" => partner.biography}
      data["nodes"] << {"id" => document_title, "group" => "document", "link" => link, "bio" => "document"}
      data["links"] << {"source" => @entity.name, "target" => document_title, "value" => 1, "group" => relationship.relationship_type}
      data["links"] << {"source" => document_title, "target" => partner.name, "value" => 1, "group" => relationship.relationship_type}
    end
    data["nodes"] = data["nodes"].uniq

    # CORS    
    headers['Access-Control-Allow-Origin'] = '*'
    headers['Access-Control-Allow-Methods'] = 'POST, PUT, DELETE, GET, OPTIONS'
    headers['Access-Control-Request-Method'] = '*'
    headers['Access-Control-Allow-Headers'] = 'Origin, X-Requested-With, Content-Type, Accept, Authorization'

    render :json => data
  end

  # DELETE /entities/1
  # DELETE /entities/1.json
  def destroy
    deeds = Deed.where(entity: @entity)
    deeds.each do |d|
      d.destroy
    end
    @entity.destroy
    respond_to do |format|
      format.html { redirect_to entities_url, notice: 'Entity was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  def search
    @entities = Entity.fuzzy_search(name: params["q"])
  end

  def record_deed(deed_type)
    deed = Deed.new
    deed.entity = @entity
    deed.deed_type = deed_type
    deed.user = current_user
    deed.save!
  end

  def update_tei
    return unless TextTransporter.enabled?
    tei_xml = @entity.build_tei
    transporter = TextTransporter.new
    transporter.save_entity(@entity.ref_id, tei_xml, current_user)
  end


  private
    # Use callbacks to share common setup or constraints between actions.
    def set_entity
      @entity = Entity.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def entity_params
      params.require(:entity).permit(:name, :entity_type, :birth_date, :death_date, :biography, :bibliography, :user_id, :gender, :lat, :long, 
        :disambiguator, :race_description, :page, race_description_ids:[])
    end
end
