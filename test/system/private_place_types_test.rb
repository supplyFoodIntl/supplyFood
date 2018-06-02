require "application_system_test_case"

class PrivatePlaceTypesTest < ApplicationSystemTestCase
  setup do
    @private_place_type = private_place_types(:one)
  end

  test "visiting the index" do
    visit private_place_types_url
    assert_selector "h1", text: "Private Place Types"
  end

  test "creating a Private place type" do
    visit private_place_types_url
    click_on "New Private Place Type"

    fill_in "Name", with: @private_place_type.name
    click_on "Create Private place type"

    assert_text "Private place type was successfully created"
    click_on "Back"
  end

  test "updating a Private place type" do
    visit private_place_types_url
    click_on "Edit", match: :first

    fill_in "Name", with: @private_place_type.name
    click_on "Update Private place type"

    assert_text "Private place type was successfully updated"
    click_on "Back"
  end

  test "destroying a Private place type" do
    visit private_place_types_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Private place type was successfully destroyed"
  end
end
