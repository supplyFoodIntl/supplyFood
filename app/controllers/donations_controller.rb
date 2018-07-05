class DonationsController < ApplicationController
  before_action :set_donation, only: [:show, :edit, :update, :destroy]

  # GET /donations
  # GET /donations.json
  def index
    @donations = Donation.all
  end

  # GET /donations/1
  # GET /donations/1.json
  def show
  end

  # GET /donations/new
  def new
      #check if the current_user have the donation consent form filled    
        current_consent_form_type = ConsentFormType.find_by description: "Donor"
        current_consent_form = ConsentForm.find_by user: current_user, consent_form_type: current_consent_form_type
      #pry
      puts "nil?"
      puts current_consent_form.nil? 
      puts "is signed?"
      puts current_consent_form.is_signed
      puts "valid until "
      puts current_consent_form.valid_until
      #pry
      if current_consent_form.nil? 
          #no consent 
          redirect_to  edit_consent_form_path (current_consent_form)
      elsif !current_consent_form.is_signed
          #consent form must be signed
          puts "!!!not signed"
          redirect_to  edit_consent_form_path (current_consent_form)
      elsif !current_consent_form.valid_until.nil? && current_consent_form.valid_until<Time.now
          #consent must be valid
          redirect_to  edit_consent_form_path (current_consent_form)
      else
          #consent form ok
          @donation = Donation.new
      end
  end

  # GET /donations/1/edit
  def edit
  end

  # POST /donations
  # POST /donations.json
  def create
    @donation = Donation.new(donation_params)

    respond_to do |format|
      if @donation.save
        format.html { redirect_to @donation, notice: 'Donation was successfully created.' }
        format.json { render :show, status: :created, location: @donation }
      else
        format.html { render :new }
        format.json { render json: @donation.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /donations/1
  # PATCH/PUT /donations/1.json
  def update
    respond_to do |format|
      if @donation.update(donation_params)
        format.html { redirect_to @donation, notice: 'Donation was successfully updated.' }
        format.json { render :show, status: :ok, location: @donation }
      else
        format.html { render :edit }
        format.json { render json: @donation.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /donations/1
  # DELETE /donations/1.json
  def destroy
    @donation.destroy
    respond_to do |format|
      format.html { redirect_to donations_url, notice: 'Donation was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_donation
      @donation = Donation.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def donation_params
      params.require(:donation).permit(:available_start, :available_end, :donor_id, :volunteer_id, good_attributes: [:Expiration_date, :measure_unit_id, :good_type_id, :donation_id, :address_id, :_destroy])
    end
end
