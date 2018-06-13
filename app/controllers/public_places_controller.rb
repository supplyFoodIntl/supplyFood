class PublicPlacesController < ApplicationController
  before_action :set_public_place, only: [:show, :edit, :update, :destroy]

  # GET /public_places
  # GET /public_places.json
  def index
    @public_places = PublicPlace.all
  end

  # GET /public_places/1
  # GET /public_places/1.json
  def show
  end

  # GET /public_places/new
  def new
    @public_place = PublicPlace.new
  end

  # GET /public_places/1/edit
  def edit
  end

  # POST /public_places
  # POST /public_places.json
  def create
    @public_place = PublicPlace.new(public_place_params)

    respond_to do |format|
       
      if @public_place.save
        format.html { redirect_to @public_place, notice: 'Public place was successfully created.' }
        format.json { render :show, status: :created, location: @public_place }
      else
        format.html { render :new }
        format.json { render json: @public_place.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /public_places/1
  # PATCH/PUT /public_places/1.json
  def update
    respond_to do |format|
      if @public_place.update(public_place_params)
        format.html { redirect_to @public_place, notice: 'Public place was successfully updated.' }
        format.json { render :show, status: :ok, location: @public_place }
      else
        format.html { render :edit }
        format.json { render json: @public_place.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /public_places/1
  # DELETE /public_places/1.json
  def destroy
    @public_place.destroy
    respond_to do |format|
      format.html { redirect_to public_places_url, notice: 'Public place was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_public_place
      @public_place = PublicPlace.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def public_place_params
      params.require(:public_place).permit(:name, :public_place_type_id, :postal_code_hint_id)
    end
end
