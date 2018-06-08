require "application_system_test_case"

class SignupsTest < ApplicationSystemTestCase
  setup do
    @signup = signups(:one)
  end

  test "visiting the index" do
    visit signups_url
    assert_selector "h1", text: "Signups"
  end

  test "creating a Signup" do
    visit signups_url
    click_on "New Signup"

    fill_in "Address Line1", with: @signup.address_line1
    fill_in "Address Line2", with: @signup.address_line2
    fill_in "Country", with: @signup.country
    fill_in "Ic", with: @signup.ic
    fill_in "Ic Type", with: @signup.ic_type_id
    fill_in "Password Digest", with: @signup.password_digest
    fill_in "Phone", with: @signup.phone
    fill_in "State", with: @signup.state
    fill_in "Username", with: @signup.username
    fill_in "Zipcode", with: @signup.zipcode
    click_on "Create Signup"

    assert_text "Signup was successfully created"
    click_on "Back"
  end

  test "updating a Signup" do
    visit signups_url
    click_on "Edit", match: :first

    fill_in "Address Line1", with: @signup.address_line1
    fill_in "Address Line2", with: @signup.address_line2
    fill_in "Country", with: @signup.country
    fill_in "Ic", with: @signup.ic
    fill_in "Ic Type", with: @signup.ic_type_id
    fill_in "Password Digest", with: @signup.password_digest
    fill_in "Phone", with: @signup.phone
    fill_in "State", with: @signup.state
    fill_in "Username", with: @signup.username
    fill_in "Zipcode", with: @signup.zipcode
    click_on "Update Signup"

    assert_text "Signup was successfully updated"
    click_on "Back"
  end

  test "destroying a Signup" do
    visit signups_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Signup was successfully destroyed"
  end
end
