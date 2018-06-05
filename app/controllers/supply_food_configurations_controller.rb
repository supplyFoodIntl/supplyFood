class SupplyFoodConfigurationsController < ApplicationController
  before_action :set_supply_food_configuration, only: [:show, :edit, :update, :destroy]



  # GET /supply_food_configurations
  # GET /supply_food_configurations.json
  def index
    @supply_food_configurations = SupplyFoodConfiguration.all
  end

  # GET /supply_food_configurations/1
  # GET /supply_food_configurations/1.json
  def show
  end

  # GET /supply_food_configurations/new
  def new
    @supply_food_configuration = SupplyFoodConfiguration.new
  end

  # GET /supply_food_configurations/1/edit
  def edit
  end

  # POST /supply_food_configurations
  # POST /supply_food_configurations.json
  def create
    @supply_food_configuration = SupplyFoodConfiguration.new(supply_food_configuration_params)

    respond_to do |format|
      if @supply_food_configuration.save
        format.html { redirect_to @supply_food_configuration, notice: 'Supply food configuration was successfully created.' }
        format.json { render :show, status: :created, location: @supply_food_configuration }
      else
        format.html { render :new }
        format.json { render json: @supply_food_configuration.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /supply_food_configurations/1
  # PATCH/PUT /supply_food_configurations/1.json
  def update
    respond_to do |format|
      if @supply_food_configuration.update(supply_food_configuration_params)
        format.html { redirect_to @supply_food_configuration, notice: 'Supply food configuration was successfully updated.' }
        format.json { render :show, status: :ok, location: @supply_food_configuration }
      else
        format.html { render :edit }
        format.json { render json: @supply_food_configuration.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /supply_food_configurations/1
  # DELETE /supply_food_configurations/1.json
  def destroy
    @supply_food_configuration.destroy
    respond_to do |format|
      format.html { redirect_to supply_food_configurations_url, notice: 'Supply food configuration was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_supply_food_configuration
      @supply_food_configuration = SupplyFoodConfiguration.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def supply_food_configuration_params
      params.require(:supply_food_configuration).permit(:name, :description, :value, :html_configuration)
    end
end
