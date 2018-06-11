require 'test_helper'

class DonationCampaignsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @donation_campaign = donation_campaigns(:one)
  end

  test "should get index" do
    get donation_campaigns_url
    assert_response :success
  end

  test "should get new" do
    get new_donation_campaign_url
    assert_response :success
  end

  test "should create donation_campaign" do
    assert_difference('DonationCampaign.count') do
      post donation_campaigns_url, params: { donation_campaign: { address_id: @donation_campaign.address_id, date_end: @donation_campaign.date_end, date_start: @donation_campaign.date_start } }
    end

    assert_redirected_to donation_campaign_url(DonationCampaign.last)
  end

  test "should show donation_campaign" do
    get donation_campaign_url(@donation_campaign)
    assert_response :success
  end

  test "should get edit" do
    get edit_donation_campaign_url(@donation_campaign)
    assert_response :success
  end

  test "should update donation_campaign" do
    patch donation_campaign_url(@donation_campaign), params: { donation_campaign: { address_id: @donation_campaign.address_id, date_end: @donation_campaign.date_end, date_start: @donation_campaign.date_start } }
    assert_redirected_to donation_campaign_url(@donation_campaign)
  end

  test "should destroy donation_campaign" do
    assert_difference('DonationCampaign.count', -1) do
      delete donation_campaign_url(@donation_campaign)
    end

    assert_redirected_to donation_campaigns_url
  end
end
