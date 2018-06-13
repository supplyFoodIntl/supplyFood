class DonorController < ApplicationController
    
def donor
end
# GET /donataion/new
def new_donataion
    @donation =Donation.new
end
# POST /donation
# POST /donation.json
def donate
    #donate
    
    @donation = Donation.new(donation_params)

    respond_to do |format|
      if @donation.save
        format.html { redirect_to @donation, notice: 'Donation request sent.' }
        format.json { render :donate, status: :created, location: @donation }
      else
        format.html { render :new }
        format.json { render json: @donation.errors, status: :unprocessable_entity }
      end
    end
end

def track_donations
    track_donations
end
    
def list_donations
    list_donations
end
    
private
    # Use callbacks to share common setup or constraints between actions.
    def set_donor
      @donor = Donor.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def donor_params
      params.require(:donor).permit(:donor_id,  donation_attributes: [:good_type_id, :qty, :measure_unit_id,:address_id, :_destroy])
    end
end
