class PostalCodeHintsController < ApplicationController
  before_action :set_postal_code_hint, only: [:show, :edit, :update, :destroy]

  # GET /postal_code_hints
  # GET /postal_code_hints.json
  def index
    @postal_code_hints = PostalCodeHint.all
  end

  #control the seach on postal_codes_hint
  def search
    #define the type of search
    if params[:search]=="code"
        #code
        @postal_code_hints = PostalCodeHint.list_by_code (params[:code])
    elsif params[:search]=="public_place_name"
        #public_place_name
        @postal_code_hints = PostalCodeHint.list_by_public_place_name (params[:public_place_name])
    elsif params[:search]=="hint"
        #hint
        @postal_code_hints = PostalCodeHint.list_by_hint (params[:hint])
    end

    if  @postal_code_hints.nil?||@postal_code_hints.empty?
            render html: '<div>No results</div>'.html_safe
    else
        respond_to do |format|
            format.html { render partial: 'postal_code_hints/search'}
            #format.json { render json: @postal_code_hints}
        end
    end
  end
    
  # GET /postal_code_hints/1
  # GET /postal_code_hints/1.json
  def show
  end

  # GET /postal_code_hints/new
  def new
    @postal_code_hint = PostalCodeHint.new
  end

  # GET /postal_code_hints/1/edit
  def edit
  end

  # POST /postal_code_hints
  # POST /postal_code_hints.json
  def create
    @postal_code_hint = PostalCodeHint.new(postal_code_hint_params)

    respond_to do |format|
      if @postal_code_hint.save
        format.html { redirect_to @postal_code_hint, notice: 'Postal code hint was successfully created.' }
        format.json { render :show, status: :created, location: @postal_code_hint }
      else
        format.html { render :new }
        format.json { render json: @postal_code_hint.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /postal_code_hints/1
  # PATCH/PUT /postal_code_hints/1.json
  def update
    respond_to do |format|
      if @postal_code_hint.update(postal_code_hint_params)
        format.html { redirect_to @postal_code_hint, notice: 'Postal code hint was successfully updated.' }
        format.json { render :show, status: :ok, location: @postal_code_hint }
      else
        format.html { render :edit }
        format.json { render json: @postal_code_hint.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /postal_code_hints/1
  # DELETE /postal_code_hints/1.json
  def destroy
    @postal_code_hint.destroy
    respond_to do |format|
      format.html { redirect_to postal_code_hints_url, notice: 'Postal code hint was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_postal_code_hint
      @postal_code_hint = PostalCodeHint.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def postal_code_hint_params
      params.require(:postal_code_hint).permit(:code, :hint,:search, :public_place_name, :public_place_id )
    end
end
