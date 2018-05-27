class IctypesController < ApplicationController
  before_action :set_ictype, only: [:show, :edit, :update, :destroy]

  # GET /ictypes
  # GET /ictypes.json
  def index
    @ictypes = Ictype.all
  end

  # GET /ictypes/1
  # GET /ictypes/1.json
  def show
  end

  # GET /ictypes/new
  def new
    @ictype = Ictype.new
  end

  # GET /ictypes/1/edit
  def edit
  end

  # POST /ictypes
  # POST /ictypes.json
  def create
    @ictype = Ictype.new(ictype_params)

    respond_to do |format|
      if @ictype.save
        format.html { redirect_to @ictype, notice: 'Ictype was successfully created.' }
        format.json { render :show, status: :created, location: @ictype }
      else
        format.html { render :new }
        format.json { render json: @ictype.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /ictypes/1
  # PATCH/PUT /ictypes/1.json
  def update
    respond_to do |format|
      if @ictype.update(ictype_params)
        format.html { redirect_to @ictype, notice: 'Ictype was successfully updated.' }
        format.json { render :show, status: :ok, location: @ictype }
      else
        format.html { render :edit }
        format.json { render json: @ictype.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /ictypes/1
  # DELETE /ictypes/1.json
  def destroy
    @ictype.destroy
    respond_to do |format|
      format.html { redirect_to ictypes_url, notice: 'Ictype was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_ictype
      @ictype = Ictype.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def ictype_params
      params.require(:ictype).permit(:nmidentificationcard, :create_time)
    end
end
