class MaterialsController < ApplicationController
  before_action :set_material, only: [:show, :edit, :update, :destroy]

  # GET /materials
  # GET /materials.json
  def index
    @materials = Material.all
  end

  # GET /materials/1
  # GET /materials/1.json
  def show
    # @transactions = Reservation.select('customers.id AS id, date, products.product_name AS shoe, products.imageurl AS imageurl,
    #                     sizes.sizename, reservation_statuses.statusname AS resstat, products.serialnumber as num, customers.id')
    #                     .joins('INNER JOIN products ON products.id = reservations.productid')
    #                     .joins('INNER JOIN sizes ON sizes.id = reservations.sizeid')
    #                     .joins('INNER JOIN customers ON customers.id = reservations.customerid')
    #                     .joins('INNER JOIN reservation_statuses ON reservation_statuses.id = reservations.reservestatusid')
    #                     .where('customers.id = ?', params[:id]).where('reservations.reservestatusid = 1').limit(100)
    @countmat = Product.select('products.id, products.product_name AS shoe, products.imageurl AS imageurl, products.serialnumber as num')
                    .joins('INNER JOIN materials ON materials.id = products.material_id')
                    .where('materials.id = ?', params[:id])
  end

  # GET /materials/new
  def new
    @material = Material.new
  end

  # GET /materials/1/edit
  def edit
  end

  # POST /materials
  # POST /materials.json
  def create
    @material = Material.new(material_params)

    respond_to do |format|
      if @material.save
        format.html { redirect_to materials_path, notice: 'Material was successfully created.' }
        format.json { render :show, status: :created, location: @material }
      else
        format.html { render :new }
        format.json { render json: @material.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /materials/1
  # PATCH/PUT /materials/1.json
  def update
    respond_to do |format|
      if @material.update(material_params)
        format.html { redirect_to @material, notice: 'Material was successfully updated.' }
        format.json { render :show, status: :ok, location: @material }
      else
        format.html { render :edit }
        format.json { render json: @material.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /materials/1
  # DELETE /materials/1.json
  def destroy
    @material.destroy
    respond_to do |format|
      format.html { redirect_to materials_url, notice: 'Material was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_material
      @material = Material.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def material_params
      params.require(:material).permit(:description)
    end
end
