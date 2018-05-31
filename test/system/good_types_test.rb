require "application_system_test_case"

class GoodTypesTest < ApplicationSystemTestCase
  setup do
    @good_type = good_types(:one)
  end

  test "visiting the index" do
    visit good_types_url
    assert_selector "h1", text: "Good Types"
  end

  test "creating a Good type" do
    visit good_types_url
    click_on "New Good Type"

    fill_in "Good Type", with: @good_type.good_type_id
    fill_in "Name", with: @good_type.name
    click_on "Create Good type"

    assert_text "Good type was successfully created"
    click_on "Back"
  end

  test "updating a Good type" do
    visit good_types_url
    click_on "Edit", match: :first

    fill_in "Good Type", with: @good_type.good_type_id
    fill_in "Name", with: @good_type.name
    click_on "Update Good type"

    assert_text "Good type was successfully updated"
    click_on "Back"
  end

  test "destroying a Good type" do
    visit good_types_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Good type was successfully destroyed"
  end
end
