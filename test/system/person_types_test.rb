require "application_system_test_case"

class PersonTypesTest < ApplicationSystemTestCase
  setup do
    @person_type = person_types(:one)
  end

  test "visiting the index" do
    visit person_types_url
    assert_selector "h1", text: "Person Types"
  end

  test "creating a Person type" do
    visit person_types_url
    click_on "New Person Type"

    fill_in "Name", with: @person_type.name
    click_on "Create Person type"

    assert_text "Person type was successfully created"
    click_on "Back"
  end

  test "updating a Person type" do
    visit person_types_url
    click_on "Edit", match: :first

    fill_in "Name", with: @person_type.name
    click_on "Update Person type"

    assert_text "Person type was successfully updated"
    click_on "Back"
  end

  test "destroying a Person type" do
    visit person_types_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Person type was successfully destroyed"
  end
end
