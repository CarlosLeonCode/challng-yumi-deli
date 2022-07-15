class PrimaryShippingAddressesController < ApplicationController
  before_action :set_primary_shipping_address, only: %i[ show edit update destroy ]

  # GET /primary_shipping_addresses or /primary_shipping_addresses.json
  def index
    @primary_shipping_addresses = PrimaryShippingAddress.all
  end

  # GET /primary_shipping_addresses/1 or /primary_shipping_addresses/1.json
  def show
  end

  # GET /primary_shipping_addresses/new
  def new
    @primary_shipping_address = PrimaryShippingAddress.new
  end

  # GET /primary_shipping_addresses/1/edit
  def edit
  end

  # POST /primary_shipping_addresses or /primary_shipping_addresses.json
  def create
    @primary_shipping_address = PrimaryShippingAddress.new(primary_shipping_address_params)

    respond_to do |format|
      if @primary_shipping_address.save
        format.html { redirect_to primary_shipping_address_url(@primary_shipping_address), notice: "Primary shipping address was successfully created." }
        format.json { render :show, status: :created, location: @primary_shipping_address }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @primary_shipping_address.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /primary_shipping_addresses/1 or /primary_shipping_addresses/1.json
  def update
    respond_to do |format|
      if @primary_shipping_address.update(primary_shipping_address_params)
        format.html { redirect_to primary_shipping_address_url(@primary_shipping_address), notice: "Primary shipping address was successfully updated." }
        format.json { render :show, status: :ok, location: @primary_shipping_address }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @primary_shipping_address.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /primary_shipping_addresses/1 or /primary_shipping_addresses/1.json
  def destroy
    @primary_shipping_address.destroy

    respond_to do |format|
      format.html { redirect_to primary_shipping_addresses_url, notice: "Primary shipping address was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_primary_shipping_address
      @primary_shipping_address = PrimaryShippingAddress.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def primary_shipping_address_params
      params.require(:primary_shipping_address).permit(:street, :number, :city, :state, :zip_code, :country)
    end
end
