require "application_system_test_case"

class AddressCocoonsTest < ApplicationSystemTestCase
  setup do
    @address_cocoon = address_cocoons(:one)
  end

  test "visiting the index" do
    visit address_cocoons_url
    assert_selector "h1", text: "Address Cocoons"
  end

  test "creating a Address cocoon" do
    visit address_cocoons_url
    click_on "New Address Cocoon"

    fill_in "Line One", with: @address_cocoon.line_one
    fill_in "Line Two", with: @address_cocoon.line_two
    fill_in "Person Cocoon", with: @address_cocoon.person_cocoon_id
    fill_in "Zip Code", with: @address_cocoon.zip_code
    click_on "Create Address cocoon"

    assert_text "Address cocoon was successfully created"
    click_on "Back"
  end

  test "updating a Address cocoon" do
    visit address_cocoons_url
    click_on "Edit", match: :first

    fill_in "Line One", with: @address_cocoon.line_one
    fill_in "Line Two", with: @address_cocoon.line_two
    fill_in "Person Cocoon", with: @address_cocoon.person_cocoon_id
    fill_in "Zip Code", with: @address_cocoon.zip_code
    click_on "Update Address cocoon"

    assert_text "Address cocoon was successfully updated"
    click_on "Back"
  end

  test "destroying a Address cocoon" do
    visit address_cocoons_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Address cocoon was successfully destroyed"
  end
end
