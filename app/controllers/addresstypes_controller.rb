class AddresstypesController < ApplicationController
  before_action :set_addresstype, only: [:show, :edit, :update, :destroy]

  # GET /addresstypes
  # GET /addresstypes.json
  def index
    @addresstypes = Addresstype.all
  end

  # GET /addresstypes/1
  # GET /addresstypes/1.json
  def show
  end

  # GET /addresstypes/new
  def new
    @addresstype = Addresstype.new
  end

  # GET /addresstypes/1/edit
  def edit
  end

  # POST /addresstypes
  # POST /addresstypes.json
  def create
    @addresstype = Addresstype.new(addresstype_params)

    respond_to do |format|
      if @addresstype.save
        format.html { redirect_to @addresstype, notice: 'Addresstype was successfully created.' }
        format.json { render :show, status: :created, location: @addresstype }
      else
        format.html { render :new }
        format.json { render json: @addresstype.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /addresstypes/1
  # PATCH/PUT /addresstypes/1.json
  def update
    respond_to do |format|
      if @addresstype.update(addresstype_params)
        format.html { redirect_to @addresstype, notice: 'Addresstype was successfully updated.' }
        format.json { render :show, status: :ok, location: @addresstype }
      else
        format.html { render :edit }
        format.json { render json: @addresstype.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /addresstypes/1
  # DELETE /addresstypes/1.json
  def destroy
    @addresstype.destroy
    respond_to do |format|
      format.html { redirect_to addresstypes_url, notice: 'Addresstype was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_addresstype
      @addresstype = Addresstype.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def addresstype_params
      params.require(:addresstype).permit(:nmaddresstype, :create_time)
    end
end
