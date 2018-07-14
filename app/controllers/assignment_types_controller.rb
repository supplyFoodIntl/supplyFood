class AssignmentTypesController < ApplicationController
  before_action :set_assignment_type, only: [:show, :edit, :update, :destroy]

  # GET /assignment_types
  # GET /assignment_types.json
  def index
    @assignment_types = AssignmentType.all.order("name")
  end

  # GET /assignment_types/1
  # GET /assignment_types/1.json
  def show
  end

  # GET /assignment_types/new
  def new
    @assignment_type = assignmentType.new
  end

  # GET /assignment_types/1/edit
  def edit
  end

  # POST /assignment_types
  # POST /assignment_types.json
  def create
    @assignment_type = assignmentType.new(assignment_type_params)

    respond_to do |format|
      if @assignment_type.save
        format.html { redirect_to @assignment_type, notice: 'assignment type was successfully created.' }
        format.json { render :show, status: :created, location: @assignment_type }
      else
        format.html { render :new }
        format.json { render json: @assignment_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /assignment_types/1
  # PATCH/PUT /assignment_types/1.json
  def update
    respond_to do |format|
      if @assignment_type.update(assignment_type_params)
        format.html { redirect_to @assignment_type, notice: 'assignment type was successfully updated.' }
        format.json { render :show, status: :ok, location: @assignment_type }
      else
        format.html { render :edit }
        format.json { render json: @assignment_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /assignment_types/1
  # DELETE /assignment_types/1.json
  def destroy
    @assignment_type.destroy
    respond_to do |format|
      format.html { redirect_to assignment_types_url, notice: 'assignment type was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_assignment_type
      @assignment_type = assignmentType.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def assignment_type_params
      params.require(:assignment_type).permit(:name, :description)
    end
end
