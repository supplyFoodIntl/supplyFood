require 'test_helper'

class PostalCodeHintsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @postal_code_hint = postal_code_hints(:one)
  end

  test "should get index" do
    get postal_code_hints_url
    assert_response :success
  end

  test "should get new" do
    get new_postal_code_hint_url
    assert_response :success
  end

  test "should create postal_code_hint" do
    assert_difference('PostalCodeHint.count') do
      post postal_code_hints_url, params: { postal_code_hint: { code: @postal_code_hint.code, hint: @postal_code_hint.hint } }
    end

    assert_redirected_to postal_code_hint_url(PostalCodeHint.last)
  end

  test "should show postal_code_hint" do
    get postal_code_hint_url(@postal_code_hint)
    assert_response :success
  end

  test "should get edit" do
    get edit_postal_code_hint_url(@postal_code_hint)
    assert_response :success
  end

  test "should update postal_code_hint" do
    patch postal_code_hint_url(@postal_code_hint), params: { postal_code_hint: { code: @postal_code_hint.code, hint: @postal_code_hint.hint } }
    assert_redirected_to postal_code_hint_url(@postal_code_hint)
  end

  test "should destroy postal_code_hint" do
    assert_difference('PostalCodeHint.count', -1) do
      delete postal_code_hint_url(@postal_code_hint)
    end

    assert_redirected_to postal_code_hints_url
  end
end
