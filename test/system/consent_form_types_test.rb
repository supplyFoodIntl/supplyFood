require "application_system_test_case"

class ConsentFormTypesTest < ApplicationSystemTestCase
  setup do
    @consent_form_type = consent_form_types(:one)
  end

  test "visiting the index" do
    visit consent_form_types_url
    assert_selector "h1", text: "Consent Form Types"
  end

  test "creating a Consent form type" do
    visit consent_form_types_url
    click_on "New Consent Form Type"

    fill_in "Description", with: @consent_form_type.description
    fill_in "Html Text", with: @consent_form_type.html_text
    click_on "Create Consent form type"

    assert_text "Consent form type was successfully created"
    click_on "Back"
  end

  test "updating a Consent form type" do
    visit consent_form_types_url
    click_on "Edit", match: :first

    fill_in "Description", with: @consent_form_type.description
    fill_in "Html Text", with: @consent_form_type.html_text
    click_on "Update Consent form type"

    assert_text "Consent form type was successfully updated"
    click_on "Back"
  end

  test "destroying a Consent form type" do
    visit consent_form_types_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Consent form type was successfully destroyed"
  end
end
