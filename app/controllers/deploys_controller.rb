class DeploysController < ApplicationController
  before_action :authenticate_user!
  before_action :set_deploy, only: [:show, :edit, :update, :destroy, :details]

  # GET /deploys
  # GET /deploys.json
  def index
    @deploys = Deploy.all
  end

  # GET /deploys/1
  # GET /deploys/1.json
  def show
  end

  # GET /deploys/new
  def new
    get_projects

    @deploy = Deploy.new
  end

  # GET /deploys/1/edit
  def edit
    get_projects
  end

  # GET /deploys/1/details
  def details
  end

  # POST /deploys
  # POST /deploys.json
  def create
    @deploy = Deploy.new(deploy_params)
    @deploy.requestor = current_user

    respond_to do |format|
      if @deploy.save
        format.html { redirect_to @deploy, notice: 'Deploy was successfully created.' }
        format.json { render :show, status: :created, location: @deploy }
      else
        format.html { render :new }
        format.json { render json: @deploy.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /deploys/1
  # PATCH/PUT /deploys/1.json
  def update
    respond_to do |format|
      if @deploy.update(deploy_params)
        format.html { redirect_to @deploy, notice: 'Deploy was successfully updated.' }
        format.json { render :show, status: :ok, location: @deploy }
      else
        format.html { render :edit }
        format.json { render json: @deploy.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /deploys/1
  # DELETE /deploys/1.json
  def destroy
    @deploy.destroy
    respond_to do |format|
      format.html { redirect_to deploys_url, notice: 'Deploy was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_deploy
      @deploy = Deploy.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def deploy_params
      params.require(:deploy).permit(:project_id, :requestor_id, :pull_request, :state, :sha, :branch)
    end

    def get_projects
      @projects = Project.all.map {|p| ["#{p.account}/#{p.repository}", p.id] }
    end
end
