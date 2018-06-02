class PrivatePlaceTypesController < ApplicationController
  before_action :set_private_place_type, only: [:show, :edit, :update, :destroy]

  # GET /private_place_types
  # GET /private_place_types.json
  def index
    @private_place_types = PrivatePlaceType.all
  end

  # GET /private_place_types/1
  # GET /private_place_types/1.json
  def show
  end

  # GET /private_place_types/new
  def new
    @private_place_type = PrivatePlaceType.new
  end

  # GET /private_place_types/1/edit
  def edit
  end

  # POST /private_place_types
  # POST /private_place_types.json
  def create
    @private_place_type = PrivatePlaceType.new(private_place_type_params)

    respond_to do |format|
      if @private_place_type.save
        format.html { redirect_to @private_place_type, notice: 'Private place type was successfully created.' }
        format.json { render :show, status: :created, location: @private_place_type }
      else
        format.html { render :new }
        format.json { render json: @private_place_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /private_place_types/1
  # PATCH/PUT /private_place_types/1.json
  def update
    respond_to do |format|
      if @private_place_type.update(private_place_type_params)
        format.html { redirect_to @private_place_type, notice: 'Private place type was successfully updated.' }
        format.json { render :show, status: :ok, location: @private_place_type }
      else
        format.html { render :edit }
        format.json { render json: @private_place_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /private_place_types/1
  # DELETE /private_place_types/1.json
  def destroy
    @private_place_type.destroy
    respond_to do |format|
      format.html { redirect_to private_place_types_url, notice: 'Private place type was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_private_place_type
      @private_place_type = PrivatePlaceType.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def private_place_type_params
      params.require(:private_place_type).permit(:name)
    end
end
