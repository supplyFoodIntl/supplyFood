require 'test_helper'

class PublicPlacesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @public_place = public_places(:one)
  end

  test "should get index" do
    get public_places_url
    assert_response :success
  end

  test "should get new" do
    get new_public_place_url
    assert_response :success
  end

  test "should create public_place" do
    assert_difference('PublicPlace.count') do
      post public_places_url, params: { public_place: { name: @public_place.name, postal_code_hint_id: @public_place.postal_code_hint_id, public_place_type_id: @public_place.public_place_type_id } }
    end

    assert_redirected_to public_place_url(PublicPlace.last)
  end

  test "should show public_place" do
    get public_place_url(@public_place)
    assert_response :success
  end

  test "should get edit" do
    get edit_public_place_url(@public_place)
    assert_response :success
  end

  test "should update public_place" do
    patch public_place_url(@public_place), params: { public_place: { name: @public_place.name, postal_code_hint_id: @public_place.postal_code_hint_id, public_place_type_id: @public_place.public_place_type_id } }
    assert_redirected_to public_place_url(@public_place)
  end

  test "should destroy public_place" do
    assert_difference('PublicPlace.count', -1) do
      delete public_place_url(@public_place)
    end

    assert_redirected_to public_places_url
  end
end
