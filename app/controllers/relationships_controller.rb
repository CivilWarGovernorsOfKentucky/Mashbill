class RelationshipsController < ApplicationController
  before_action :set_relationship, only: [:show, :edit, :update, :destroy]

  # GET /relationships
  # GET /relationships.json
  def index
    @relationships = Relationship.all
  end

  # GET /relationships/1
  # GET /relationships/1.json
  def show
  end

  # GET /relationships/new
  def new
    @relationship = Relationship.new
  end

  # GET /relationships/1/edit
  def edit
  end

  # POST /relationships
  # POST /relationships.json
  def create
    #@relationship = Relationship.new(relationship_params)

    respond_to do |format|
      if @relationship.save
        format.html { redirect_to @relationship, notice: 'Relationship was successfully created.' }
        format.json { render :show, status: :created, location: @relationship }
      else
        format.html { render :new }
        format.json { render json: @relationship.errors, status: :unprocessable_entity }
      end
    end
  end

  def define
    #binding.pry
    @entities = []
    @relationships = []
    #get document by the cwgkid
    #get the annotations for that doc
    document = Document.where(:cwgk_id => params[:cwgk_id]).first
    Annotation.where(:document_id => document.id).each do |annotation|
      #get the entities for the annotations for the doc
      @entities << annotation.entity unless annotation.entity.nil?
    end
    # clear out the nil entities
    @relationships=get_relationships_for_entities
    #pass to the view to show the entities with a checkbox next to them
    @entities
    @cwgk_id = params[:cwgk_id]
  end

  def add
    @relationship = Relationship.new
    @relationship.entity_1_id = params[:left_entity]
    @relationship.entity_2_id = params[:right_entity]
    @relationship.relationship_type = params[:relationship_type]
    @relationship.save!
    redirect_to define_relationships_path(params[:cwgk_id])
  end

  # PATCH/PUT /relationships/1
  # PATCH/PUT /relationships/1.json
  def update
    respond_to do |format|
      if @relationship.update(relationship_params)
        format.html { redirect_to @relationship, notice: 'Relationship was successfully updated.' }
        format.json { render :show, status: :ok, location: @relationship }
      else
        format.html { render :edit }
        format.json { render json: @relationship.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /relationships/1
  # DELETE /relationships/1.json
  def destroy
    @relationship.destroy
    respond_to do |format|
      format.html { redirect_to relationships_url, notice: 'Relationship was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    def get_relationships_for_entities
      @relationships = []
      #@relationships << entity.entity_1_id
      #Relationship.where(:entity_1_id => @entities.first.id)
      #Relationship.where(:entity_2_id => @entities.first.id)
      @entities.each do |entity| 
          Relationship.where(:entity_1_id => entity.id).each do |relationship|
            @relationships << relationship
          end
      end
      @entities.each do |entity| 
          Relationship.where(:entity_2_id => entity.id).each do |relationship|
            @relationships << relationship
          end
      end
      # something here to remove relationships where the entity2 isn't in our list of entities or smarter code above
      @relationships = @relationships.uniq
    end

    # Use callbacks to share common setup or constraints between actions.
    def set_relationship
      @relationship = Relationship.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def relationship_params
      params.require(:relationship).permit(:entity_1_id, :entity_2_id, :relationship_type, :user_id, :citation)
    end
end
