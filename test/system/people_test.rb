require "application_system_test_case"

class PeopleTest < ApplicationSystemTestCase
  setup do
    @person = people(:one)
  end

  test "visiting the index" do
    visit people_url
    assert_selector "h1", text: "People"
  end

  test "creating a Person" do
    visit people_url
    click_on "New Person"

    fill_in "Create Time", with: @person.create_time
    fill_in "Ic", with: @person.ic
    fill_in "Ict Idictype", with: @person.ict_idictype
    fill_in "Nmperson", with: @person.nmperson
    fill_in "Pt Idpersontype", with: @person.pt_idpersontype
    click_on "Create Person"

    assert_text "Person was successfully created"
    click_on "Back"
  end

  test "updating a Person" do
    visit people_url
    click_on "Edit", match: :first

    fill_in "Create Time", with: @person.create_time
    fill_in "Ic", with: @person.ic
    fill_in "Ict Idictype", with: @person.ict_idictype
    fill_in "Nmperson", with: @person.nmperson
    fill_in "Pt Idpersontype", with: @person.pt_idpersontype
    click_on "Update Person"

    assert_text "Person was successfully updated"
    click_on "Back"
  end

  test "destroying a Person" do
    visit people_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Person was successfully destroyed"
  end
end
