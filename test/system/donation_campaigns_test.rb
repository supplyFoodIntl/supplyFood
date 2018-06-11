require "application_system_test_case"

class DonationCampaignsTest < ApplicationSystemTestCase
  setup do
    @donation_campaign = donation_campaigns(:one)
  end

  test "visiting the index" do
    visit donation_campaigns_url
    assert_selector "h1", text: "Donation Campaigns"
  end

  test "creating a Donation campaign" do
    visit donation_campaigns_url
    click_on "New Donation Campaign"

    fill_in "Address", with: @donation_campaign.address_id
    fill_in "Date End", with: @donation_campaign.date_end
    fill_in "Date Start", with: @donation_campaign.date_start
    click_on "Create Donation campaign"

    assert_text "Donation campaign was successfully created"
    click_on "Back"
  end

  test "updating a Donation campaign" do
    visit donation_campaigns_url
    click_on "Edit", match: :first

    fill_in "Address", with: @donation_campaign.address_id
    fill_in "Date End", with: @donation_campaign.date_end
    fill_in "Date Start", with: @donation_campaign.date_start
    click_on "Update Donation campaign"

    assert_text "Donation campaign was successfully updated"
    click_on "Back"
  end

  test "destroying a Donation campaign" do
    visit donation_campaigns_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Donation campaign was successfully destroyed"
  end
end
