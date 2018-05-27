require "application_system_test_case"

class IctypesTest < ApplicationSystemTestCase
  setup do
    @ictype = ictypes(:one)
  end

  test "visiting the index" do
    visit ictypes_url
    assert_selector "h1", text: "Ictypes"
  end

  test "creating a Ictype" do
    visit ictypes_url
    click_on "New Ictype"

    fill_in "Create Time", with: @ictype.create_time
    fill_in "Nmidentificationcard", with: @ictype.nmidentificationcard
    click_on "Create Ictype"

    assert_text "Ictype was successfully created"
    click_on "Back"
  end

  test "updating a Ictype" do
    visit ictypes_url
    click_on "Edit", match: :first

    fill_in "Create Time", with: @ictype.create_time
    fill_in "Nmidentificationcard", with: @ictype.nmidentificationcard
    click_on "Update Ictype"

    assert_text "Ictype was successfully updated"
    click_on "Back"
  end

  test "destroying a Ictype" do
    visit ictypes_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Ictype was successfully destroyed"
  end
end
