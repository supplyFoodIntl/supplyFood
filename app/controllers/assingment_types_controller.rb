class AssingmentTypesController < ApplicationController
  before_action :set_assingment_type, only: [:show, :edit, :update, :destroy]

  # GET /assingment_types
  # GET /assingment_types.json
  def index
    @assingment_types = AssingmentType.all.order("name")
  end

  # GET /assingment_types/1
  # GET /assingment_types/1.json
  def show
  end

  # GET /assingment_types/new
  def new
    @assingment_type = AssingmentType.new
  end

  # GET /assingment_types/1/edit
  def edit
  end

  # POST /assingment_types
  # POST /assingment_types.json
  def create
    @assingment_type = AssingmentType.new(assingment_type_params)

    respond_to do |format|
      if @assingment_type.save
        format.html { redirect_to @assingment_type, notice: 'Assingment type was successfully created.' }
        format.json { render :show, status: :created, location: @assingment_type }
      else
        format.html { render :new }
        format.json { render json: @assingment_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /assingment_types/1
  # PATCH/PUT /assingment_types/1.json
  def update
    respond_to do |format|
      if @assingment_type.update(assingment_type_params)
        format.html { redirect_to @assingment_type, notice: 'Assingment type was successfully updated.' }
        format.json { render :show, status: :ok, location: @assingment_type }
      else
        format.html { render :edit }
        format.json { render json: @assingment_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /assingment_types/1
  # DELETE /assingment_types/1.json
  def destroy
    @assingment_type.destroy
    respond_to do |format|
      format.html { redirect_to assingment_types_url, notice: 'Assingment type was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_assingment_type
      @assingment_type = AssingmentType.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def assingment_type_params
      params.require(:assingment_type).permit(:name, :description)
    end
end
