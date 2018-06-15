require 'test_helper'

class ConsentFormsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @consent_form = consent_forms(:one)
  end

  test "should get index" do
    get consent_forms_url
    assert_response :success
  end

  test "should get new" do
    get new_consent_form_url
    assert_response :success
  end

  test "should create consent_form" do
    assert_difference('ConsentForm.count') do
      post consent_forms_url, params: { consent_form: { consent_form_type_id: @consent_form.consent_form_type_id, person_id: @consent_form.person_id } }
    end

    assert_redirected_to consent_form_url(ConsentForm.last)
  end

  test "should show consent_form" do
    get consent_form_url(@consent_form)
    assert_response :success
  end

  test "should get edit" do
    get edit_consent_form_url(@consent_form)
    assert_response :success
  end

  test "should update consent_form" do
    patch consent_form_url(@consent_form), params: { consent_form: { consent_form_type_id: @consent_form.consent_form_type_id, person_id: @consent_form.person_id } }
    assert_redirected_to consent_form_url(@consent_form)
  end

  test "should destroy consent_form" do
    assert_difference('ConsentForm.count', -1) do
      delete consent_form_url(@consent_form)
    end

    assert_redirected_to consent_forms_url
  end
end
