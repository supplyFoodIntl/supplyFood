class PublicplacetypesController < ApplicationController
  before_action :set_publicplacetype, only: [:show, :edit, :update, :destroy]

  # GET /publicplacetypes
  # GET /publicplacetypes.json
  def index
    @publicplacetypes = Publicplacetype.all
  end

  # GET /publicplacetypes/1
  # GET /publicplacetypes/1.json
  def show
  end

  # GET /publicplacetypes/new
  def new
    @publicplacetype = Publicplacetype.new
  end

  # GET /publicplacetypes/1/edit
  def edit
  end

  # POST /publicplacetypes
  # POST /publicplacetypes.json
  def create
    @publicplacetype = Publicplacetype.new(publicplacetype_params)

    respond_to do |format|
      if @publicplacetype.save
        format.html { redirect_to @publicplacetype, notice: 'Publicplacetype was successfully created.' }
        format.json { render :show, status: :created, location: @publicplacetype }
      else
        format.html { render :new }
        format.json { render json: @publicplacetype.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /publicplacetypes/1
  # PATCH/PUT /publicplacetypes/1.json
  def update
    respond_to do |format|
      if @publicplacetype.update(publicplacetype_params)
        format.html { redirect_to @publicplacetype, notice: 'Publicplacetype was successfully updated.' }
        format.json { render :show, status: :ok, location: @publicplacetype }
      else
        format.html { render :edit }
        format.json { render json: @publicplacetype.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /publicplacetypes/1
  # DELETE /publicplacetypes/1.json
  def destroy
    @publicplacetype.destroy
    respond_to do |format|
      format.html { redirect_to publicplacetypes_url, notice: 'Publicplacetype was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_publicplacetype
      @publicplacetype = Publicplacetype.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def publicplacetype_params
      params.require(:publicplacetype).permit(:dspublicplacetype, :create_time)
    end
end
