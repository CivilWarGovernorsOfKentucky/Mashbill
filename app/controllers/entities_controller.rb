class EntitiesController < ApplicationController
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
  end

  # GET /entities/new
  def new
    @entity = Entity.new
    @annotation = nil
    if params[:annotation_id]
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
        annotation = Annotation.find(params["annotation_id"])
        annotation.entity_id=@entity.id
        annotation.save
        record_deed(Deed::ENTITY_CREATE)
        format.html { redirect_to(bycwgkid_path(annotation.document.cwgk_id), notice: 'Entity was successfully created.') } 
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
        format.html { redirect_to @entity, notice: 'Entity was successfully updated.' }
        format.json { render :show, status: :ok, location: @entity }
      else
        format.html { render :edit }
        format.json { render json: @entity.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /entities/1
  # DELETE /entities/1.json
  def destroy
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

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_entity
      @entity = Entity.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def entity_params
      params.require(:entity).permit(:name, :entity_type, :birth_date, :death_date, :biography, :bibliography, :user_id, :gender, :lat, :long, 
        :disambiguator, :race_description, race_description_ids:[])
    end
end
