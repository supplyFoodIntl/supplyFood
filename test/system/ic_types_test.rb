require "application_system_test_case"

class IcTypesTest < ApplicationSystemTestCase
  setup do
    @ic_type = ic_types(:one)
  end

  test "visiting the index" do
    visit ic_types_url
    assert_selector "h1", text: "Ic Types"
  end

  test "creating a Ic type" do
    visit ic_types_url
    click_on "New Ic Type"

    fill_in "Name", with: @ic_type.name
    click_on "Create Ic type"

    assert_text "Ic type was successfully created"
    click_on "Back"
  end

  test "updating a Ic type" do
    visit ic_types_url
    click_on "Edit", match: :first

    fill_in "Name", with: @ic_type.name
    click_on "Update Ic type"

    assert_text "Ic type was successfully updated"
    click_on "Back"
  end

  test "destroying a Ic type" do
    visit ic_types_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Ic type was successfully destroyed"
  end
end
