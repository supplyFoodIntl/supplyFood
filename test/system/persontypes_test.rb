require "application_system_test_case"

class PersontypesTest < ApplicationSystemTestCase
  setup do
    @persontype = persontypes(:one)
  end

  test "visiting the index" do
    visit persontypes_url
    assert_selector "h1", text: "Persontypes"
  end

  test "creating a Persontype" do
    visit persontypes_url
    click_on "New Persontype"

    fill_in "Create Time", with: @persontype.create_time
    fill_in "Dspersontype", with: @persontype.dspersontype
    click_on "Create Persontype"

    assert_text "Persontype was successfully created"
    click_on "Back"
  end

  test "updating a Persontype" do
    visit persontypes_url
    click_on "Edit", match: :first

    fill_in "Create Time", with: @persontype.create_time
    fill_in "Dspersontype", with: @persontype.dspersontype
    click_on "Update Persontype"

    assert_text "Persontype was successfully updated"
    click_on "Back"
  end

  test "destroying a Persontype" do
    visit persontypes_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Persontype was successfully destroyed"
  end
end
