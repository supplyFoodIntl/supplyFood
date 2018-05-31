require 'test_helper'

class GoodTypesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @good_type = good_types(:one)
  end

  test "should get index" do
    get good_types_url
    assert_response :success
  end

  test "should get new" do
    get new_good_type_url
    assert_response :success
  end

  test "should create good_type" do
    assert_difference('GoodType.count') do
      post good_types_url, params: { good_type: { good_type_id: @good_type.good_type_id, name: @good_type.name } }
    end

    assert_redirected_to good_type_url(GoodType.last)
  end

  test "should show good_type" do
    get good_type_url(@good_type)
    assert_response :success
  end

  test "should get edit" do
    get edit_good_type_url(@good_type)
    assert_response :success
  end

  test "should update good_type" do
    patch good_type_url(@good_type), params: { good_type: { good_type_id: @good_type.good_type_id, name: @good_type.name } }
    assert_redirected_to good_type_url(@good_type)
  end

  test "should destroy good_type" do
    assert_difference('GoodType.count', -1) do
      delete good_type_url(@good_type)
    end

    assert_redirected_to good_types_url
  end
end
