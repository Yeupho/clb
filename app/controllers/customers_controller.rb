class CustomersController < ApplicationController
  before_action :set_customer, only: [:show, :edit, :update, :destroy]

  # GET /customers
  # GET /customers.json
  def index

    @customers = Customer.order(:firstname)

  end

  # GET /customers/1
  # GET /customers/1.json
  def show

    # Author.joins("INNER JOIN posts ON posts.author_id = authors.id AND posts.published = 't'")
    @transactions = Reservation.select('customers.id AS id, date, products.product_name AS producta, products.imageurl AS imageurl,
                        sizes.sizename, reservation_statuses.statusname AS resstat, products.serialnumber as num, customers.id')
                        .joins('INNER JOIN products ON products.id = reservations.productid')
                        .joins('INNER JOIN sizes ON sizes.id = reservations.sizeid')
                        .joins('INNER JOIN customers ON customers.id = reservations.customerid')
                        .joins('INNER JOIN reservation_statuses ON reservation_statuses.id = reservations.reservestatusid')
                        .where('customers.id = ?', params[:id]).where('reservations.reservestatusid = 1').limit(100)
    @transactions2 = Reservation.select('customers.id AS id, date, products.product_name AS producta, products.imageurl AS imageurl,
                        sizes.sizename, reservation_statuses.statusname AS resstat, products.serialnumber as num, customers.id')
                        .joins('INNER JOIN products ON products.id = reservations.productid')
                        .joins('INNER JOIN sizes ON sizes.id = reservations.sizeid')
                        .joins('INNER JOIN customers ON customers.id = reservations.customerid')
                        .joins('INNER JOIN reservation_statuses ON reservation_statuses.id = reservations.reservestatusid')
                        .where('customers.id = ?', params[:id]).where('reservations.reservestatusid = 2').limit(100)
    @transactions3 = Reservation.select('customers.id AS id, date, products.product_name AS producta, products.imageurl AS imageurl,
                        sizes.sizename, reservation_statuses.statusname AS resstat, products.serialnumber as num, customers.id')
                         .joins('INNER JOIN products ON products.id = reservations.productid')
                         .joins('INNER JOIN sizes ON sizes.id = reservations.sizeid')
                         .joins('INNER JOIN customers ON customers.id = reservations.customerid')
                         .joins('INNER JOIN reservation_statuses ON reservation_statuses.id = reservations.reservestatusid')
                         .where('customers.id = ?', params[:id]).where('reservations.reservestatusid = 3').limit(100)

    # Reservation.select('customers.id AS id, date, products.product_name AS producta, products.imageurl AS imageurl,sizes.sizename, reservation_statuses.statusname AS resstat, products.serialnumber AS num, customers.id').joins('INNER JOIN products ON products.id = reservations.productid').joins('INNER JOIN sizes ON sizes.id = reservations.sizeid').joins('INNER JOIN customers ON customers.id = reservations.customerid').joins('INNER JOIN reservation_statuses ON reservation_statuses.id = reservations.reservestatusid').where('customers.id = 4').where('reservations.reservestatusid = 1').limit(100)
  end

  # GET /customers/new
  def new
    @customer = Customer.new
  end

  # GET /customers/1/edit
  def edit
  end

  # POST /customers
  # POST /customers.json
  def create
    @customer = Customer.new(customer_params)

    respond_to do |format|
      if @customer.save
        format.html { redirect_to customers_path, notice: 'Customer was successfully created.' }
        format.json { render :show, status: :created, location: @customer }
      else
        format.html { render :new }
        format.json { render json: @customer.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /customers/1
  # PATCH/PUT /customers/1.json
  def update
    respond_to do |format|
      if @customer.update(customer_params)
        format.html { redirect_to @customer, notice: 'Customer was successfully updated.' }
        format.json { render :show, status: :ok, location: @customer }
      else
        format.html { render :edit }
        format.json { render json: @customer.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /customers/1
  # DELETE /customers/1.json
  def destroy
    @customer.destroy
    respond_to do |format|
      format.html { redirect_to customers_url, notice: 'Customer was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_customer
      @customer = Customer.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def customer_params
      params.require(:customer).permit(:firstname, :lastname, :email, :phone, :country_id, :state_id, :city, :zipcode, :address, :customerstatusid)
    end
end
