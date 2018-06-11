class DonationCampaignsController < ApplicationController
  before_action :set_donation_campaign, only: [:show, :edit, :update, :destroy]

  # GET /donation_campaigns
  # GET /donation_campaigns.json
  def index
    @donation_campaigns = DonationCampaign.all
  end

  # GET /donation_campaigns/1
  # GET /donation_campaigns/1.json
  def show
  end

  # GET /donation_campaigns/new
  def new
    @donation_campaign = DonationCampaign.new
  end

  # GET /donation_campaigns/1/edit
  def edit
  end

  # POST /donation_campaigns
  # POST /donation_campaigns.json
  def create
    @donation_campaign = DonationCampaign.new(donation_campaign_params)

    respond_to do |format|
      if @donation_campaign.save
        format.html { redirect_to @donation_campaign, notice: 'Donation campaign was successfully created.' }
        format.json { render :show, status: :created, location: @donation_campaign }
      else
        format.html { render :new }
        format.json { render json: @donation_campaign.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /donation_campaigns/1
  # PATCH/PUT /donation_campaigns/1.json
  def update
    respond_to do |format|
      if @donation_campaign.update(donation_campaign_params)
        format.html { redirect_to @donation_campaign, notice: 'Donation campaign was successfully updated.' }
        format.json { render :show, status: :ok, location: @donation_campaign }
      else
        format.html { render :edit }
        format.json { render json: @donation_campaign.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /donation_campaigns/1
  # DELETE /donation_campaigns/1.json
  def destroy
    @donation_campaign.destroy
    respond_to do |format|
      format.html { redirect_to donation_campaigns_url, notice: 'Donation campaign was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_donation_campaign
      @donation_campaign = DonationCampaign.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def donation_campaign_params
      params.require(:donation_campaign).permit(:address_id, :date_start, :date_end)
    end
end
