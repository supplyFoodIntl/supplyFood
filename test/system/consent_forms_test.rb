require "application_system_test_case"

class ConsentFormsTest < ApplicationSystemTestCase
  setup do
    @consent_form = consent_forms(:one)
  end

  test "visiting the index" do
    visit consent_forms_url
    assert_selector "h1", text: "Consent Forms"
  end

  test "creating a Consent form" do
    visit consent_forms_url
    click_on "New Consent Form"

    fill_in "Consent Form Type", with: @consent_form.consent_form_type_id
    fill_in "Person", with: @consent_form.person_id
    click_on "Create Consent form"

    assert_text "Consent form was successfully created"
    click_on "Back"
  end

  test "updating a Consent form" do
    visit consent_forms_url
    click_on "Edit", match: :first

    fill_in "Consent Form Type", with: @consent_form.consent_form_type_id
    fill_in "Person", with: @consent_form.person_id
    click_on "Update Consent form"

    assert_text "Consent form was successfully updated"
    click_on "Back"
  end

  test "destroying a Consent form" do
    visit consent_forms_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Consent form was successfully destroyed"
  end
end
