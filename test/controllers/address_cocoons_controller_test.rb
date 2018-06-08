require 'test_helper'

class AddressCocoonsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @address_cocoon = address_cocoons(:one)
  end

  test "should get index" do
    get address_cocoons_url
    assert_response :success
  end

  test "should get new" do
    get new_address_cocoon_url
    assert_response :success
  end

  test "should create address_cocoon" do
    assert_difference('AddressCocoon.count') do
      post address_cocoons_url, params: { address_cocoon: { line_one: @address_cocoon.line_one, line_two: @address_cocoon.line_two, person_cocoon_id: @address_cocoon.person_cocoon_id, zip_code: @address_cocoon.zip_code } }
    end

    assert_redirected_to address_cocoon_url(AddressCocoon.last)
  end

  test "should show address_cocoon" do
    get address_cocoon_url(@address_cocoon)
    assert_response :success
  end

  test "should get edit" do
    get edit_address_cocoon_url(@address_cocoon)
    assert_response :success
  end

  test "should update address_cocoon" do
    patch address_cocoon_url(@address_cocoon), params: { address_cocoon: { line_one: @address_cocoon.line_one, line_two: @address_cocoon.line_two, person_cocoon_id: @address_cocoon.person_cocoon_id, zip_code: @address_cocoon.zip_code } }
    assert_redirected_to address_cocoon_url(@address_cocoon)
  end

  test "should destroy address_cocoon" do
    assert_difference('AddressCocoon.count', -1) do
      delete address_cocoon_url(@address_cocoon)
    end

    assert_redirected_to address_cocoons_url
  end
end
