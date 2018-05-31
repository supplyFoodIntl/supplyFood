require "application_system_test_case"

class PostalCodeHintsTest < ApplicationSystemTestCase
  setup do
    @postal_code_hint = postal_code_hints(:one)
  end

  test "visiting the index" do
    visit postal_code_hints_url
    assert_selector "h1", text: "Postal Code Hints"
  end

  test "creating a Postal code hint" do
    visit postal_code_hints_url
    click_on "New Postal Code Hint"

    fill_in "Code", with: @postal_code_hint.code
    fill_in "Hint", with: @postal_code_hint.hint
    click_on "Create Postal code hint"

    assert_text "Postal code hint was successfully created"
    click_on "Back"
  end

  test "updating a Postal code hint" do
    visit postal_code_hints_url
    click_on "Edit", match: :first

    fill_in "Code", with: @postal_code_hint.code
    fill_in "Hint", with: @postal_code_hint.hint
    click_on "Update Postal code hint"

    assert_text "Postal code hint was successfully updated"
    click_on "Back"
  end

  test "destroying a Postal code hint" do
    visit postal_code_hints_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Postal code hint was successfully destroyed"
  end
end
