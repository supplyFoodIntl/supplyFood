class IcTypesController < ApplicationController
  before_action :set_ic_type, only: [:show, :edit, :update, :destroy]

  # GET /ic_types
  # GET /ic_types.json
  def index
    @ic_types = IcType.all
  end

  # GET /ic_types/1
  # GET /ic_types/1.json
  def show
  end

  # GET /ic_types/new
  def new
    @ic_type = IcType.new
  end

  # GET /ic_types/1/edit
  def edit
  end

  # POST /ic_types
  # POST /ic_types.json
  def create
    @ic_type = IcType.new(ic_type_params)

    respond_to do |format|
      if @ic_type.save
        format.html { redirect_to @ic_type, notice: 'Ic type was successfully created.' }
        format.json { render :show, status: :created, location: @ic_type }
      else
        format.html { render :new }
        format.json { render json: @ic_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /ic_types/1
  # PATCH/PUT /ic_types/1.json
  def update
    respond_to do |format|
      if @ic_type.update(ic_type_params)
        format.html { redirect_to @ic_type, notice: 'Ic type was successfully updated.' }
        format.json { render :show, status: :ok, location: @ic_type }
      else
        format.html { render :edit }
        format.json { render json: @ic_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /ic_types/1
  # DELETE /ic_types/1.json
  def destroy
    @ic_type.destroy
    respond_to do |format|
      format.html { redirect_to ic_types_url, notice: 'Ic type was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_ic_type
      @ic_type = IcType.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def ic_type_params
      params.require(:ic_type).permit(:name)
    end
end
