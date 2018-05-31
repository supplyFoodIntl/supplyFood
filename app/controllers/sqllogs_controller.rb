class SqllogsController < ApplicationController
  before_action :set_sqllog, only: [:show, :update]

  # GET /sqllogs
  # GET /sqllogs.json
  def index
    @sqllogs = Sqllog.all
  end

  # GET /sqllogs/1
  # GET /sqllogs/1.json
  def show
  end

  # GET /sqllogs/new
  def new
    @sqllog = Sqllog.new
  end



  # POST /sqllogs
  # POST /sqllogs.json
  def create
    @sqllog = Sqllog.new(sqllog_params)

    respond_to do |format|
      if @sqllog.save
        format.html { redirect_to @sqllog, notice: 'Sqllog was successfully created.' }
        format.json { render :show, status: :created, location: @sqllog }
      else
        format.html { render :new }
        format.json { render json: @sqllog.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /sqllogs/1
  # PATCH/PUT /sqllogs/1.json
  def update
    respond_to do |format|
      if @sqllog.update(sqllog_params)
        format.html { redirect_to @sqllog, notice: 'Sqllog was successfully updated.' }
        format.json { render :show, status: :ok, location: @sqllog }
      else
        format.html { render :edit }
        format.json { render json: @sqllog.errors, status: :unprocessable_entity }
      end
    end
  end


  def pack
      # TODO : implement sql log compress and export to file
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_sqllog
      @sqllog = Sqllog.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def sqllog_params
      params.require(:sqllog).permit(:sql_executed)
    end
end
