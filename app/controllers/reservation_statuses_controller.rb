class ReservationStatusesController < ApplicationController
  before_action :set_reservation_status, only: [:show, :edit, :update, :destroy]

  # GET /reservation_statuses
  # GET /reservation_statuses.json
  def index
    @reservation_statuses = ReservationStatus.all
  end

  # GET /reservation_statuses/1
  # GET /reservation_statuses/1.json
  def show
  end

  # GET /reservation_statuses/new
  def new
    @reservation_status = ReservationStatus.new
  end

  # GET /reservation_statuses/1/edit
  def edit
  end

  # POST /reservation_statuses
  # POST /reservation_statuses.json
  def create
    @reservation_status = ReservationStatus.new(reservation_status_params)

    respond_to do |format|
      if @reservation_status.save
        format.html { redirect_to @reservation_status, notice: 'Reservation status was successfully created.' }
        format.json { render :show, status: :created, location: @reservation_status }
      else
        format.html { render :new }
        format.json { render json: @reservation_status.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /reservation_statuses/1
  # PATCH/PUT /reservation_statuses/1.json
  def update
    respond_to do |format|
      if @reservation_status.update(reservation_status_params)
        format.html { redirect_to @reservation_status, notice: 'Reservation status was successfully updated.' }
        format.json { render :show, status: :ok, location: @reservation_status }
      else
        format.html { render :edit }
        format.json { render json: @reservation_status.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /reservation_statuses/1
  # DELETE /reservation_statuses/1.json
  def destroy
    @reservation_status.destroy
    respond_to do |format|
      format.html { redirect_to reservation_statuses_url, notice: 'Reservation status was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_reservation_status
      @reservation_status = ReservationStatus.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def reservation_status_params
      params.require(:reservation_status).permit(:statusname)
    end
end
