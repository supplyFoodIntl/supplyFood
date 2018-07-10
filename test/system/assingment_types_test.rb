require "application_system_test_case"

class assignmentTypesTest < ApplicationSystemTestCase
  setup do
    @assignment_type = assignment_types(:one)
  end

  test "visiting the index" do
    visit assignment_types_url
    assert_selector "h1", text: "assignment Types"
  end

  test "creating a assignment type" do
    visit assignment_types_url
    click_on "New assignment Type"

    fill_in "Description", with: @assignment_type.description
    fill_in "Name", with: @assignment_type.name
    click_on "Create assignment type"

    assert_text "assignment type was successfully created"
    click_on "Back"
  end

  test "updating a assignment type" do
    visit assignment_types_url
    click_on "Edit", match: :first

    fill_in "Description", with: @assignment_type.description
    fill_in "Name", with: @assignment_type.name
    click_on "Update assignment type"

    assert_text "assignment type was successfully updated"
    click_on "Back"
  end

  test "destroying a assignment type" do
    visit assignment_types_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "assignment type was successfully destroyed"
  end
end
