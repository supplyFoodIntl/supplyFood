require "application_system_test_case"

class AddresstypesTest < ApplicationSystemTestCase
  setup do
    @addresstype = addresstypes(:one)
  end

  test "visiting the index" do
    visit addresstypes_url
    assert_selector "h1", text: "Addresstypes"
  end

  test "creating a Addresstype" do
    visit addresstypes_url
    click_on "New Addresstype"

    fill_in "Create Time", with: @addresstype.create_time
    fill_in "Nmaddresstype", with: @addresstype.nmaddresstype
    click_on "Create Addresstype"

    assert_text "Addresstype was successfully created"
    click_on "Back"
  end

  test "updating a Addresstype" do
    visit addresstypes_url
    click_on "Edit", match: :first

    fill_in "Create Time", with: @addresstype.create_time
    fill_in "Nmaddresstype", with: @addresstype.nmaddresstype
    click_on "Update Addresstype"

    assert_text "Addresstype was successfully updated"
    click_on "Back"
  end

  test "destroying a Addresstype" do
    visit addresstypes_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Addresstype was successfully destroyed"
  end
end
