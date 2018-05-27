require "application_system_test_case"

class PublicplacetypesTest < ApplicationSystemTestCase
  setup do
    @publicplacetype = publicplacetypes(:one)
  end

  test "visiting the index" do
    visit publicplacetypes_url
    assert_selector "h1", text: "Publicplacetypes"
  end

  test "creating a Publicplacetype" do
    visit publicplacetypes_url
    click_on "New Publicplacetype"

    fill_in "Create Time", with: @publicplacetype.create_time
    fill_in "Dspublicplacetype", with: @publicplacetype.dspublicplacetype
    click_on "Create Publicplacetype"

    assert_text "Publicplacetype was successfully created"
    click_on "Back"
  end

  test "updating a Publicplacetype" do
    visit publicplacetypes_url
    click_on "Edit", match: :first

    fill_in "Create Time", with: @publicplacetype.create_time
    fill_in "Dspublicplacetype", with: @publicplacetype.dspublicplacetype
    click_on "Update Publicplacetype"

    assert_text "Publicplacetype was successfully updated"
    click_on "Back"
  end

  test "destroying a Publicplacetype" do
    visit publicplacetypes_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Publicplacetype was successfully destroyed"
  end
end
