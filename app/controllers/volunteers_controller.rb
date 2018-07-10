class VolunteersController < ApplicationController
  before_action :set_volunteer, only: [:show, :edit, :update, :destroy]

  # GET /volunteers
  # GET /volunteers.json
  def index
    @volunteers = Volunteer.all
  end

  # GET /volunteers/1
  # GET /volunteers/1.json
  def show
  end

  # GET /volunteers/new
  def new
     #check if the current_user have the donation consent form filled    
        current_consent_form_type = ConsentFormType.find_by description: "Volunteer"
        current_consent_form = ConsentForm.find_by user: current_user, consent_form_type: current_consent_form_type
      #pry
      if current_consent_form.nil? 
          #no consent 
          puts "!!!no consent"
          #create the consent end redirect to be signed
           current_consent_form = ConsentForm.new
           current_consent_form.consent_form_type = ConsentFormType.find_by description: "Volunteer"
           current_consent_form.origin_url = "/volunteers/new"
           current_consent_form.user = current_user
           current_consent_form.save

          redirect_to  edit_consent_form_path (current_consent_form)
      elsif !current_consent_form.is_signed
          #consent form must be signed
          puts "!!!not signed"
          redirect_to  edit_consent_form_path (current_consent_form)
      elsif !current_consent_form.valid_until.nil? && current_consent_form.valid_until<Time.now
          #consent must be valid
          puts "!!!consent expired"
          redirect_to  edit_consent_form_path (current_consent_form)
      else
          #consent form ok
          #check if the current user has a volunteer
          if current_user.volunteer.nil?
            #open new volunteer
            @volunteer = Volunteer.new
          else
            @volunteer = current_user.volunteer
            redirect_to  edit_volunteer_path(@volunteer)
          end
      end
  end

  # GET /volunteers/1/edit
  def edit
  end

  # POST /volunteers
  # POST /volunteers.json
  def create      
      @volunteer = Volunteer.new(volunteer_params)
      
    respond_to do |format|
      if @volunteer.save
          current_user.volunteer = @volunteer
          current_user.save
        format.html { redirect_to @volunteer, notice: 'Volunteer was successfully created.' }
        format.json { render :show, status: :created, location: @volunteer }
      else
        format.html { render :new }
        format.json { render json: @volunteer.errors, status: :unprocessable_entity }
      end
    end
      
       puts @volunteer.errors.to_json
  end

  # PATCH/PUT /volunteers/1
  # PATCH/PUT /volunteers/1.json
  def update
    respond_to do |format|
      if @volunteer.update(volunteer_params)
        format.html { redirect_to @volunteer, notice: 'Volunteer was successfully updated.' }
        format.json { render :show, status: :ok, location: @volunteer }
      else
        format.html { render :edit }
        format.json { render json: @volunteer.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /volunteers/1
  # DELETE /volunteers/1.json
  def destroy
    @volunteer.destroy
    respond_to do |format|
      format.html { redirect_to volunteers_url, notice: 'Volunteer was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_volunteer
      @volunteer = Volunteer.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def volunteer_params
      params.require(:volunteer).permit( :operating_area, :availability,:skills,:health_concerns)
    end
end
