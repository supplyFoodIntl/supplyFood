require "application_system_test_case"

class AssingmentTypesTest < ApplicationSystemTestCase
  setup do
    @assingment_type = assingment_types(:one)
  end

  test "visiting the index" do
    visit assingment_types_url
    assert_selector "h1", text: "Assingment Types"
  end

  test "creating a Assingment type" do
    visit assingment_types_url
    click_on "New Assingment Type"

    fill_in "Description", with: @assingment_type.description
    fill_in "Name", with: @assingment_type.name
    click_on "Create Assingment type"

    assert_text "Assingment type was successfully created"
    click_on "Back"
  end

  test "updating a Assingment type" do
    visit assingment_types_url
    click_on "Edit", match: :first

    fill_in "Description", with: @assingment_type.description
    fill_in "Name", with: @assingment_type.name
    click_on "Update Assingment type"

    assert_text "Assingment type was successfully updated"
    click_on "Back"
  end

  test "destroying a Assingment type" do
    visit assingment_types_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Assingment type was successfully destroyed"
  end
end
