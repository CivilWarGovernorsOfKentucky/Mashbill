class UsersController < ApplicationController
  before_action :set_user, only: [:show, :edit, :update, :destroy]

  # GET /users
  # GET /users.json
  def index
    @users = User.all
  end

  def dashboard
    @user=current_user
    Annotation.ingest_new_annotations
    @documents = Document.joins(:annotations).where(:annotations => {:hypothesis_user => current_user.hypothesis_user}).uniq
    @review_documents = Document.where(:needs_review => true)
    @annotations=Annotation.all
    @deeds=Deed.all.page params[:page]
  end

  def statistics
    @user=current_user
    @review_documents = Document.where(:needs_review => true)
    @complete_documents = Document.where(:completed => true)
    @annotations_count=Annotation.count
    @deed_count=Deed.count
    @completed_documents_count=Document.where(:completed => true).count
    @needs_review_documents_count=Document.where(:needs_review => true).count
    @entity_count=Entity.count
    @relationship_count=Relationship.count
  end

  # GET /users/1
  # GET /users/1.json
  def show
  end

  # GET /users/new
  def new
    @user = User.new
  end

  # GET /users/1/edit
  def edit
  end

  # POST /users
  # POST /users.json
  # this never gets called, see registration controller
  def create
    @user = User.new(user_params)

    respond_to do |format|
      if @user.save
        format.html { redirect_to @user, notice: 'User was successfully created.' }
        format.json { render :show, status: :created, location: @user }
      else
        format.html { render :new }
        format.json { render json: @user.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /users/1
  # PATCH/PUT /users/1.json
  # this never gets called, see registration controller
  def update
    respond_to do |format|
      if @user.update(user_params)
        format.html { redirect_to @user, notice: 'User was successfully updated.' }
        format.json { render :show, status: :ok, location: @user }
      else
        format.html { render :edit }
        format.json { render json: @user.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /users/1
  # DELETE /users/1.json
  def destroy
    @user.destroy
    respond_to do |format|
      format.html { redirect_to users_url, notice: 'User was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_user
      @user = User.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def user_params
      params.require(:user).permit(:hypothesis_user, :name)
    end
end
