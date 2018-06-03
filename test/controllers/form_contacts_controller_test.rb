require 'test_helper'

class FormContactsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @form_contact = form_contacts(:one)
  end

  test "should get index" do
    get form_contacts_url
    assert_response :success
  end

  test "should get new" do
    get new_form_contact_url
    assert_response :success
  end

  test "should create form_contact" do
    assert_difference('FormContact.count') do
      post form_contacts_url, params: { form_contact: { message: @form_contact.message, name: @form_contact.name, subject: @form_contact.subject } }
    end

    assert_redirected_to form_contact_url(FormContact.last)
  end

  test "should show form_contact" do
    get form_contact_url(@form_contact)
    assert_response :success
  end

  test "should get edit" do
    get edit_form_contact_url(@form_contact)
    assert_response :success
  end

  test "should update form_contact" do
    patch form_contact_url(@form_contact), params: { form_contact: { message: @form_contact.message, name: @form_contact.name, subject: @form_contact.subject } }
    assert_redirected_to form_contact_url(@form_contact)
  end

  test "should destroy form_contact" do
    assert_difference('FormContact.count', -1) do
      delete form_contact_url(@form_contact)
    end

    assert_redirected_to form_contacts_url
  end
end
