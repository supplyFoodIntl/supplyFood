require "application_system_test_case"

class PersonCocoonsTest < ApplicationSystemTestCase
  setup do
    @person_cocoon = person_cocoons(:one)
  end

  test "visiting the index" do
    visit person_cocoons_url
    assert_selector "h1", text: "Person Cocoons"
  end

  test "creating a Person cocoon" do
    visit person_cocoons_url
    click_on "New Person Cocoon"

    fill_in "Ic", with: @person_cocoon.ic
    fill_in "Ic Type", with: @person_cocoon.ic_type_id
    fill_in "Name", with: @person_cocoon.name
    click_on "Create Person cocoon"

    assert_text "Person cocoon was successfully created"
    click_on "Back"
  end

  test "updating a Person cocoon" do
    visit person_cocoons_url
    click_on "Edit", match: :first

    fill_in "Ic", with: @person_cocoon.ic
    fill_in "Ic Type", with: @person_cocoon.ic_type_id
    fill_in "Name", with: @person_cocoon.name
    click_on "Update Person cocoon"

    assert_text "Person cocoon was successfully updated"
    click_on "Back"
  end

  test "destroying a Person cocoon" do
    visit person_cocoons_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Person cocoon was successfully destroyed"
  end
end
