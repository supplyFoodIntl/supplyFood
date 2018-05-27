class PersontypesController < ApplicationController
  before_action :set_persontype, only: [:show, :edit, :update, :destroy]

  # GET /persontypes
  # GET /persontypes.json
  def index
    @persontypes = Persontype.all
  end

  # GET /persontypes/1
  # GET /persontypes/1.json
  def show
  end

  # GET /persontypes/new
  def new
    @persontype = Persontype.new
  end

  # GET /persontypes/1/edit
  def edit
  end

  # POST /persontypes
  # POST /persontypes.json
  def create
    @persontype = Persontype.new(persontype_params)

    respond_to do |format|
      if @persontype.save
        format.html { redirect_to @persontype, notice: 'Persontype was successfully created.' }
        format.json { render :show, status: :created, location: @persontype }
      else
        format.html { render :new }
        format.json { render json: @persontype.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /persontypes/1
  # PATCH/PUT /persontypes/1.json
  def update
    respond_to do |format|
      if @persontype.update(persontype_params)
        format.html { redirect_to @persontype, notice: 'Persontype was successfully updated.' }
        format.json { render :show, status: :ok, location: @persontype }
      else
        format.html { render :edit }
        format.json { render json: @persontype.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /persontypes/1
  # DELETE /persontypes/1.json
  def destroy
    @persontype.destroy
    respond_to do |format|
      format.html { redirect_to persontypes_url, notice: 'Persontype was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_persontype
      @persontype = Persontype.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def persontype_params
      params.require(:persontype).permit(:dspersontype, :create_time)
    end
end
