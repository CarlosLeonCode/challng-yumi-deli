class CustomerAddressesController < ApplicationController
  layout 'customer'
  before_action :set_customer_address, only: %i[ show edit update destroy ]
  before_action :authenticate_customer!

  # GET /customer_addresses or /customer_addresses.json
  def index
    @customer_addresses = current_customer.customer_addresses
  end

  # GET /customer_addresses/1 or /customer_addresses/1.json
  def show
  end

  # GET /customer_addresses/new
  def new
    @customer_address = current_customer.customer_addresses.new
  end

  # GET /customer_addresses/1/edit
  def edit
  end

  # POST /customer_addresses or /customer_addresses.json
  def create
    @customer_address = current_customer.customer_addresses.new(customer_address_params)

    respond_to do |format|
      if @customer_address.save
        format.html { redirect_to customer_address_url(@customer_address), notice: "Customer address was successfully created." }
        format.json { render :show, status: :created, location: @customer_address }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @customer_address.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /customer_addresses/1 or /customer_addresses/1.json
  def update
    respond_to do |format|
      if @customer_address.update(customer_address_params)
        format.html { redirect_to customer_address_url(@customer_address), notice: "Customer address was successfully updated." }
        format.json { render :show, status: :ok, location: @customer_address }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @customer_address.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /customer_addresses/1 or /customer_addresses/1.json
  def destroy
    @customer_address.destroy

    respond_to do |format|
      format.html { redirect_to customer_addresses_url, notice: "Customer address was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_customer_address
      @customer_address = CustomerAddress.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def customer_address_params
      params.require(:customer_address).permit(:customer_id, :street, :number, :city, :state, :zip_code, :country)
    end
end
