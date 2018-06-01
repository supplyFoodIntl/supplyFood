require "application_system_test_case"

class PublicPlacesTest < ApplicationSystemTestCase
  setup do
    @public_place = public_places(:one)
  end

  test "visiting the index" do
    visit public_places_url
    assert_selector "h1", text: "Public Places"
  end

  test "creating a Public place" do
    visit public_places_url
    click_on "New Public Place"

    fill_in "Name", with: @public_place.name
    fill_in "Postal Code Hint", with: @public_place.postal_code_hint_id
    fill_in "Public Place Type", with: @public_place.public_place_type_id
    click_on "Create Public place"

    assert_text "Public place was successfully created"
    click_on "Back"
  end

  test "updating a Public place" do
    visit public_places_url
    click_on "Edit", match: :first

    fill_in "Name", with: @public_place.name
    fill_in "Postal Code Hint", with: @public_place.postal_code_hint_id
    fill_in "Public Place Type", with: @public_place.public_place_type_id
    click_on "Update Public place"

    assert_text "Public place was successfully updated"
    click_on "Back"
  end

  test "destroying a Public place" do
    visit public_places_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Public place was successfully destroyed"
  end
end
