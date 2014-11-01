class DeployCommandsController < ApplicationController
  before_action :authenticate_user!
  before_action :set_deploy_command, only: [:show, :edit, :update, :destroy]

  # GET /deploy_commands
  # GET /deploy_commands.json
  def index
    @deploy_commands = DeployCommand.all
  end

  # GET /deploy_commands/1
  # GET /deploy_commands/1.json
  def show
  end

  # GET /deploy_commands/new
  def new
    @deploy_command = DeployCommand.new
  end

  # GET /deploy_commands/1/edit
  def edit
  end

  # POST /deploy_commands
  # POST /deploy_commands.json
  def create
    @deploy_command = DeployCommand.new(deploy_command_params)

    respond_to do |format|
      if @deploy_command.save
        format.html { redirect_to @deploy_command, notice: 'Deploy command was successfully created.' }
        format.json { render :show, status: :created, location: @deploy_command }
      else
        format.html { render :new }
        format.json { render json: @deploy_command.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /deploy_commands/1
  # PATCH/PUT /deploy_commands/1.json
  def update
    respond_to do |format|
      if @deploy_command.update(deploy_command_params)
        format.html { redirect_to @deploy_command, notice: 'Deploy command was successfully updated.' }
        format.json { render :show, status: :ok, location: @deploy_command }
      else
        format.html { render :edit }
        format.json { render json: @deploy_command.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /deploy_commands/1
  # DELETE /deploy_commands/1.json
  def destroy
    @deploy_command.destroy
    respond_to do |format|
      format.html { redirect_to deploy_commands_url, notice: 'Deploy command was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_deploy_command
      @deploy_command = DeployCommand.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def deploy_command_params
      params.require(:deploy_command).permit(:deploy_id, :command, :parameters, :result)
    end
end
