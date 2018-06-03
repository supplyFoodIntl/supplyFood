require "application_system_test_case"

class FormContactsTest < ApplicationSystemTestCase
  setup do
    @form_contact = form_contacts(:one)
  end

  test "visiting the index" do
    visit form_contacts_url
    assert_selector "h1", text: "Form Contacts"
  end

  test "creating a Form contact" do
    visit form_contacts_url
    click_on "New Form Contact"

    fill_in "Message", with: @form_contact.message
    fill_in "Name", with: @form_contact.name
    fill_in "Subject", with: @form_contact.subject
    click_on "Create Form contact"

    assert_text "Form contact was successfully created"
    click_on "Back"
  end

  test "updating a Form contact" do
    visit form_contacts_url
    click_on "Edit", match: :first

    fill_in "Message", with: @form_contact.message
    fill_in "Name", with: @form_contact.name
    fill_in "Subject", with: @form_contact.subject
    click_on "Update Form contact"

    assert_text "Form contact was successfully updated"
    click_on "Back"
  end

  test "destroying a Form contact" do
    visit form_contacts_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Form contact was successfully destroyed"
  end
end
