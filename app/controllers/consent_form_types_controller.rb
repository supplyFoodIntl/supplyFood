class ConsentFormTypesController < ApplicationController
  before_action :set_consent_form_type, only: [:show, :edit, :update, :destroy]

  # GET /consent_form_types
  # GET /consent_form_types.json
  def index
    @consent_form_types = ConsentFormType.all.order("description")
  end

  # GET /consent_form_types/1
  # GET /consent_form_types/1.json
  def show
  end

  # GET /consent_form_types/new
  def new
    @consent_form_type = ConsentFormType.new
  end

  # GET /consent_form_types/1/edit
  def edit
  end

  # POST /consent_form_types
  # POST /consent_form_types.json
  def create
    @consent_form_type = ConsentFormType.new(consent_form_type_params)

    respond_to do |format|
      if @consent_form_type.save
        format.html { redirect_to @consent_form_type, notice: 'Consent form type was successfully created.' }
        format.json { render :show, status: :created, location: @consent_form_type }
      else
        format.html { render :new }
        format.json { render json: @consent_form_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /consent_form_types/1
  # PATCH/PUT /consent_form_types/1.json
  def update
    respond_to do |format|
      if @consent_form_type.update(consent_form_type_params)
        format.html { redirect_to @consent_form_type, notice: 'Consent form type was successfully updated.' }
        format.json { render :show, status: :ok, location: @consent_form_type }
      else
        format.html { render :edit }
        format.json { render json: @consent_form_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /consent_form_types/1
  # DELETE /consent_form_types/1.json
  def destroy
    @consent_form_type.destroy
    respond_to do |format|
      format.html { redirect_to consent_form_types_url, notice: 'Consent form type was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_consent_form_type
      @consent_form_type = ConsentFormType.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def consent_form_type_params
      params.require(:consent_form_type).permit(:description, :html_text)
    end
end
