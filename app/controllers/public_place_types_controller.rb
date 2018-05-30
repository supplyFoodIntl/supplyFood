class PublicPlaceTypesController < ApplicationController
  before_action :set_public_place_type, only: [:show, :edit, :update, :destroy]

  # GET /public_place_types
  # GET /public_place_types.json
  def index
    @public_place_types = PublicPlaceType.all
  end

  # GET /public_place_types/1
  # GET /public_place_types/1.json
  def show
  end

  # GET /public_place_types/new
  def new
    @public_place_type = PublicPlaceType.new
  end

  # GET /public_place_types/1/edit
  def edit
  end

  # POST /public_place_types
  # POST /public_place_types.json
  def create
    @public_place_type = PublicPlaceType.new(public_place_type_params)

    respond_to do |format|
      if @public_place_type.save
        format.html { redirect_to @public_place_type, notice: 'Public place type was successfully created.' }
        format.json { render :show, status: :created, location: @public_place_type }
      else
        format.html { render :new }
        format.json { render json: @public_place_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /public_place_types/1
  # PATCH/PUT /public_place_types/1.json
  def update
    respond_to do |format|
      if @public_place_type.update(public_place_type_params)
        format.html { redirect_to @public_place_type, notice: 'Public place type was successfully updated.' }
        format.json { render :show, status: :ok, location: @public_place_type }
      else
        format.html { render :edit }
        format.json { render json: @public_place_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /public_place_types/1
  # DELETE /public_place_types/1.json
  def destroy
    @public_place_type.destroy
    respond_to do |format|
      format.html { redirect_to public_place_types_url, notice: 'Public place type was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_public_place_type
      @public_place_type = PublicPlaceType.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def public_place_type_params
      params.require(:public_place_type).permit(:name)
    end
end
