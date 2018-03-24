class HeelsController < ApplicationController
  before_action :set_heel, only: [:show, :edit, :update, :destroy]

  # GET /heels
  # GET /heels.json
  def index
    @heels = Heel.all
  end

  # GET /heels/1
  # GET /heels/1.json
  def show
  end

  # GET /heels/new
  def new
    @heel = Heel.new
  end

  # GET /heels/1/edit
  def edit
  end

  # POST /heels
  # POST /heels.json
  def create
    @heel = Heel.new(heel_params)

    respond_to do |format|
      if @heel.save
        format.html { redirect_to @heel, notice: 'Heel was successfully created.' }
        format.json { render :show, status: :created, location: @heel }
      else
        format.html { render :new }
        format.json { render json: @heel.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /heels/1
  # PATCH/PUT /heels/1.json
  def update
    respond_to do |format|
      if @heel.update(heel_params)
        format.html { redirect_to @heel, notice: 'Heel was successfully updated.' }
        format.json { render :show, status: :ok, location: @heel }
      else
        format.html { render :edit }
        format.json { render json: @heel.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /heels/1
  # DELETE /heels/1.json
  def destroy
    @heel.destroy
    respond_to do |format|
      format.html { redirect_to heels_url, notice: 'Heel was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_heel
      @heel = Heel.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def heel_params
      params.require(:heel).permit(:Height)
    end
end
