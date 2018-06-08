class PersonCocoonsController < ApplicationController
  before_action :set_person_cocoon, only: [:show, :edit, :update, :destroy]

  # GET /person_cocoons
  # GET /person_cocoons.json
  def index
    @person_cocoons = PersonCocoon.all
  end

  # GET /person_cocoons/1
  # GET /person_cocoons/1.json
  def show
  end

  # GET /person_cocoons/new
  def new
    @person_cocoon = PersonCocoon.new
  end

  # GET /person_cocoons/1/edit
  def edit
  end

  # POST /person_cocoons
  # POST /person_cocoons.json
  def create
    @person_cocoon = PersonCocoon.new(person_cocoon_params)

    respond_to do |format|
      if @person_cocoon.save
        format.html { redirect_to @person_cocoon, notice: 'Person cocoon was successfully created.' }
        format.json { render :show, status: :created, location: @person_cocoon }
      else
        format.html { render :new }
        format.json { render json: @person_cocoon.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /person_cocoons/1
  # PATCH/PUT /person_cocoons/1.json
  def update
    respond_to do |format|
      if @person_cocoon.update(person_cocoon_params)
        format.html { redirect_to @person_cocoon, notice: 'Person cocoon was successfully updated.' }
        format.json { render :show, status: :ok, location: @person_cocoon }
      else
        format.html { render :edit }
        format.json { render json: @person_cocoon.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /person_cocoons/1
  # DELETE /person_cocoons/1.json
  def destroy
    @person_cocoon.destroy
    respond_to do |format|
      format.html { redirect_to person_cocoons_url, notice: 'Person cocoon was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_person_cocoon
      @person_cocoon = PersonCocoon.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def person_cocoon_params
      params.require(:person_cocoon).permit(:name, :ic, :ic_type_id, address_cocoons_attributes: [:line_one, :line_two, :zip_code, :_destroy])



    end
end
