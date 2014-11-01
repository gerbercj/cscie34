class DeployQueriesController < ApplicationController
  before_action :authenticate_user!
  before_action :set_deploy_query, only: [:show, :edit, :update, :destroy]

  # GET /deploy_queries
  # GET /deploy_queries.json
  def index
    @deploy_queries = DeployQuery.all
  end

  # GET /deploy_queries/1
  # GET /deploy_queries/1.json
  def show
  end

  # GET /deploy_queries/new
  def new
    @deploy_query = DeployQuery.new
  end

  # GET /deploy_queries/1/edit
  def edit
  end

  # POST /deploy_queries
  # POST /deploy_queries.json
  def create
    @deploy_query = DeployQuery.new(deploy_query_params)

    respond_to do |format|
      if @deploy_query.save
        format.html { redirect_to @deploy_query, notice: 'Deploy query was successfully created.' }
        format.json { render :show, status: :created, location: @deploy_query }
      else
        format.html { render :new }
        format.json { render json: @deploy_query.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /deploy_queries/1
  # PATCH/PUT /deploy_queries/1.json
  def update
    respond_to do |format|
      if @deploy_query.update(deploy_query_params)
        format.html { redirect_to @deploy_query, notice: 'Deploy query was successfully updated.' }
        format.json { render :show, status: :ok, location: @deploy_query }
      else
        format.html { render :edit }
        format.json { render json: @deploy_query.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /deploy_queries/1
  # DELETE /deploy_queries/1.json
  def destroy
    @deploy_query.destroy
    respond_to do |format|
      format.html { redirect_to deploy_queries_url, notice: 'Deploy query was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_deploy_query
      @deploy_query = DeployQuery.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def deploy_query_params
      params.require(:deploy_query).permit(:deploy_id, :query, :expected_result, :actual_result)
    end
end
