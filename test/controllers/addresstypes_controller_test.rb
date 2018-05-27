require 'test_helper'

class AddresstypesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @addresstype = addresstypes(:one)
  end

  test "should get index" do
    get addresstypes_url
    assert_response :success
  end

  test "should get new" do
    get new_addresstype_url
    assert_response :success
  end

  test "should create addresstype" do
    assert_difference('Addresstype.count') do
      post addresstypes_url, params: { addresstype: { create_time: @addresstype.create_time, nmaddresstype: @addresstype.nmaddresstype } }
    end

    assert_redirected_to addresstype_url(Addresstype.last)
  end

  test "should show addresstype" do
    get addresstype_url(@addresstype)
    assert_response :success
  end

  test "should get edit" do
    get edit_addresstype_url(@addresstype)
    assert_response :success
  end

  test "should update addresstype" do
    patch addresstype_url(@addresstype), params: { addresstype: { create_time: @addresstype.create_time, nmaddresstype: @addresstype.nmaddresstype } }
    assert_redirected_to addresstype_url(@addresstype)
  end

  test "should destroy addresstype" do
    assert_difference('Addresstype.count', -1) do
      delete addresstype_url(@addresstype)
    end

    assert_redirected_to addresstypes_url
  end
end
