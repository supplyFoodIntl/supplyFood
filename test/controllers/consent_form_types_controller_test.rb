require 'test_helper'

class ConsentFormTypesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @consent_form_type = consent_form_types(:one)
  end

  test "should get index" do
    get consent_form_types_url
    assert_response :success
  end

  test "should get new" do
    get new_consent_form_type_url
    assert_response :success
  end

  test "should create consent_form_type" do
    assert_difference('ConsentFormType.count') do
      post consent_form_types_url, params: { consent_form_type: { description: @consent_form_type.description, html_text: @consent_form_type.html_text } }
    end

    assert_redirected_to consent_form_type_url(ConsentFormType.last)
  end

  test "should show consent_form_type" do
    get consent_form_type_url(@consent_form_type)
    assert_response :success
  end

  test "should get edit" do
    get edit_consent_form_type_url(@consent_form_type)
    assert_response :success
  end

  test "should update consent_form_type" do
    patch consent_form_type_url(@consent_form_type), params: { consent_form_type: { description: @consent_form_type.description, html_text: @consent_form_type.html_text } }
    assert_redirected_to consent_form_type_url(@consent_form_type)
  end

  test "should destroy consent_form_type" do
    assert_difference('ConsentFormType.count', -1) do
      delete consent_form_type_url(@consent_form_type)
    end

    assert_redirected_to consent_form_types_url
  end
end
