require 'test_helper'

class IctypesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @ictype = ictypes(:one)
  end

  test "should get index" do
    get ictypes_url
    assert_response :success
  end

  test "should get new" do
    get new_ictype_url
    assert_response :success
  end

  test "should create ictype" do
    assert_difference('Ictype.count') do
      post ictypes_url, params: { ictype: { create_time: @ictype.create_time, nmidentificationcard: @ictype.nmidentificationcard } }
    end

    assert_redirected_to ictype_url(Ictype.last)
  end

  test "should show ictype" do
    get ictype_url(@ictype)
    assert_response :success
  end

  test "should get edit" do
    get edit_ictype_url(@ictype)
    assert_response :success
  end

  test "should update ictype" do
    patch ictype_url(@ictype), params: { ictype: { create_time: @ictype.create_time, nmidentificationcard: @ictype.nmidentificationcard } }
    assert_redirected_to ictype_url(@ictype)
  end

  test "should destroy ictype" do
    assert_difference('Ictype.count', -1) do
      delete ictype_url(@ictype)
    end

    assert_redirected_to ictypes_url
  end
end
