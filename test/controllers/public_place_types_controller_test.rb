require 'test_helper'

class PublicPlaceTypesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @public_place_type = public_place_types(:one)
  end

  test "should get index" do
    get public_place_types_url
    assert_response :success
  end

  test "should get new" do
    get new_public_place_type_url
    assert_response :success
  end

  test "should create public_place_type" do
    assert_difference('PublicPlaceType.count') do
      post public_place_types_url, params: { public_place_type: { name: @public_place_type.name } }
    end

    assert_redirected_to public_place_type_url(PublicPlaceType.last)
  end

  test "should show public_place_type" do
    get public_place_type_url(@public_place_type)
    assert_response :success
  end

  test "should get edit" do
    get edit_public_place_type_url(@public_place_type)
    assert_response :success
  end

  test "should update public_place_type" do
    patch public_place_type_url(@public_place_type), params: { public_place_type: { name: @public_place_type.name } }
    assert_redirected_to public_place_type_url(@public_place_type)
  end

  test "should destroy public_place_type" do
    assert_difference('PublicPlaceType.count', -1) do
      delete public_place_type_url(@public_place_type)
    end

    assert_redirected_to public_place_types_url
  end
end
