class GoodTypesController < ApplicationController
  before_action :set_good_type, only: [:show, :edit, :update, :destroy]

  # GET /good_types
  # GET /good_types.json
  def index
    @good_types = GoodType.paginate(page: params[:page], per_page: 10)
  end

  # GET /good_types/1
  # GET /good_types/1.json
  def show
  end

  # GET /good_types/new
  def new
    @good_type = GoodType.new
  end

  # GET /good_types/1/edit
  def edit
  end

  # POST /good_types
  # POST /good_types.json
  def create
    @good_type = GoodType.new(good_type_params)

    respond_to do |format|
      if @good_type.save
        format.html { redirect_to @good_type, notice: 'Good type was successfully created.' }
        format.json { render :show, status: :created, location: @good_type }
      else
        format.html { render :new }
        format.json { render json: @good_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /good_types/1
  # PATCH/PUT /good_types/1.json
  def update
    respond_to do |format|
      if @good_type.update(good_type_params)
        format.html { redirect_to @good_type, notice: 'Good type was successfully updated.' }
        format.json { render :show, status: :ok, location: @good_type }
      else
        format.html { render :edit }
        format.json { render json: @good_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /good_types/1
  # DELETE /good_types/1.json
  def destroy
    @good_type.destroy
    respond_to do |format|
      format.html { redirect_to good_types_url, notice: 'Good type was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_good_type
      @good_type = GoodType.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def good_type_params
      params.require(:good_type).permit(:name, :good_type_id)
    end
end
