class AgendaRequestsController < ApplicationController
  before_action :set_agenda_request, only: %i[ show edit update destroy ]

  # GET /agenda_requests or /agenda_requests.json
  def index
    @agenda_requests = AgendaRequest.all
  end

  # GET /agenda_requests/1 or /agenda_requests/1.json
  def show
  end

  # GET /agenda_requests/new
  def new
    @agenda_request = AgendaRequest.new
  end

  # GET /agenda_requests/1/edit
  def edit
  end

  # POST /agenda_requests or /agenda_requests.json
  def create
    @agenda_request = AgendaRequest.new(agenda_request_params)

    respond_to do |format|
      if @agenda_request.save
        format.html { redirect_to agenda_request_url(@agenda_request), notice: "Agenda request was successfully created." }
        format.json { render :show, status: :created, location: @agenda_request }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @agenda_request.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /agenda_requests/1 or /agenda_requests/1.json
  def update
    respond_to do |format|
      if @agenda_request.update(agenda_request_params)
        format.html { redirect_to agenda_request_url(@agenda_request), notice: "Agenda request was successfully updated." }
        format.json { render :show, status: :ok, location: @agenda_request }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @agenda_request.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /agenda_requests/1 or /agenda_requests/1.json
  def destroy
    @agenda_request.destroy

    respond_to do |format|
      format.html { redirect_to agenda_requests_url, notice: "Agenda request was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_agenda_request
      @agenda_request = AgendaRequest.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def agenda_request_params
      params.fetch(:agenda_request, {})
    end
end
