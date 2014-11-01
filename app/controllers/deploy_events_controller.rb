class DeployEventsController < ApplicationController
  before_action :authenticate_user!
  before_action :set_deploy_event, only: [:show, :edit, :update, :destroy]

  # GET /deploy_events
  # GET /deploy_events.json
  def index
    @deploy_events = DeployEvent.all
  end

  # GET /deploy_events/1
  # GET /deploy_events/1.json
  def show
  end

  # GET /deploy_events/new
  def new
    @deploy_event = DeployEvent.new
  end

  # GET /deploy_events/1/edit
  def edit
  end

  # POST /deploy_events
  # POST /deploy_events.json
  def create
    @deploy_event = DeployEvent.new(deploy_event_params)

    respond_to do |format|
      if @deploy_event.save
        format.html { redirect_to @deploy_event, notice: 'Deploy event was successfully created.' }
        format.json { render :show, status: :created, location: @deploy_event }
      else
        format.html { render :new }
        format.json { render json: @deploy_event.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /deploy_events/1
  # PATCH/PUT /deploy_events/1.json
  def update
    respond_to do |format|
      if @deploy_event.update(deploy_event_params)
        format.html { redirect_to @deploy_event, notice: 'Deploy event was successfully updated.' }
        format.json { render :show, status: :ok, location: @deploy_event }
      else
        format.html { render :edit }
        format.json { render json: @deploy_event.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /deploy_events/1
  # DELETE /deploy_events/1.json
  def destroy
    @deploy_event.destroy
    respond_to do |format|
      format.html { redirect_to deploy_events_url, notice: 'Deploy event was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_deploy_event
      @deploy_event = DeployEvent.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def deploy_event_params
      params.require(:deploy_event).permit(:deploy_id, :message, :status)
    end
end
