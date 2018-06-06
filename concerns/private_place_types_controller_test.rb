require 'test_helper'

class PrivatePlaceTypesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @private_place_type = private_place_types(:one)
  end

  test "should get index" do
    get private_place_types_url
    assert_response :success
  end

  test "should get new" do
    get new_private_place_type_url
    assert_response :success
  end

  test "should create private_place_type" do
    assert_difference('PrivatePlaceType.count') do
      post private_place_types_url, params: { private_place_type: { name: @private_place_type.name } }
    end

    assert_redirected_to private_place_type_url(PrivatePlaceType.last)
  end

  test "should show private_place_type" do
    get private_place_type_url(@private_place_type)
    assert_response :success
  end

  test "should get edit" do
    get edit_private_place_type_url(@private_place_type)
    assert_response :success
  end

  test "should update private_place_type" do
    patch private_place_type_url(@private_place_type), params: { private_place_type: { name: @private_place_type.name } }
    assert_redirected_to private_place_type_url(@private_place_type)
  end

  test "should destroy private_place_type" do
    assert_difference('PrivatePlaceType.count', -1) do
      delete private_place_type_url(@private_place_type)
    end

    assert_redirected_to private_place_types_url
  end
end
