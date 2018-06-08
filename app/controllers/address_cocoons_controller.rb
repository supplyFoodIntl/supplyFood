class AddressCocoonsController < ApplicationController
  before_action :set_address_cocoon, only: [:show, :edit, :update, :destroy]

  # GET /address_cocoons
  # GET /address_cocoons.json
  def index
    @address_cocoons = AddressCocoon.all
  end

  # GET /address_cocoons/1
  # GET /address_cocoons/1.json
  def show
  end

  # GET /address_cocoons/new
  def new
    @address_cocoon = AddressCocoon.new
  end

  # GET /address_cocoons/1/edit
  def edit
  end

  # POST /address_cocoons
  # POST /address_cocoons.json
  def create
    @address_cocoon = AddressCocoon.new(address_cocoon_params)

    respond_to do |format|
      if @address_cocoon.save
        format.html { redirect_to @address_cocoon, notice: 'Address cocoon was successfully created.' }
        format.json { render :show, status: :created, location: @address_cocoon }
      else
        format.html { render :new }
        format.json { render json: @address_cocoon.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /address_cocoons/1
  # PATCH/PUT /address_cocoons/1.json
  def update
    respond_to do |format|
      if @address_cocoon.update(address_cocoon_params)
        format.html { redirect_to @address_cocoon, notice: 'Address cocoon was successfully updated.' }
        format.json { render :show, status: :ok, location: @address_cocoon }
      else
        format.html { render :edit }
        format.json { render json: @address_cocoon.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /address_cocoons/1
  # DELETE /address_cocoons/1.json
  def destroy
    @address_cocoon.destroy
    respond_to do |format|
      format.html { redirect_to address_cocoons_url, notice: 'Address cocoon was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_address_cocoon
      @address_cocoon = AddressCocoon.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def address_cocoon_params
      params.require(:address_cocoon).permit(:line_one, :line_two, :zip_code, :person_cocoon_id)
    end
end
