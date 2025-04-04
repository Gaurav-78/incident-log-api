class IncidentsController < ApplicationController
  before_action :set_incident, only: [:show, :destroy]

  # GET /incidents
  def index
    incidents = Incident.all
    render json: incidents, status: :ok
  end

  # POST /incidents
  def create
    incident = Incident.new(incident_params)
    if incident.save
      render json: incident, status: :created
    else
      render json: { errors: incident.errors.full_messages }, status: :unprocessable_entity
    end
  end

  # GET /incidents/:id
  def show
    render json: @incident, status: :ok
  end

  # DELETE /incidents/:id
  def destroy
    @incident.destroy
    head :no_content
  end

  private

  def set_incident
    @incident = Incident.find_by(id: params[:id])
    return render json: { error: "Incident not found" }, status: :not_found unless @incident
  end

  def incident_params
    params.require(:incident).permit(:title, :description, :severity)
  end
end
