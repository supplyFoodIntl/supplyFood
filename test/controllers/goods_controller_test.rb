require 'test_helper'

class GoodsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @good = goods(:one)
  end

  test "should get index" do
    get goods_url
    assert_response :success
  end

  test "should get new" do
    get new_good_url
    assert_response :success
  end

  test "should create good" do
    assert_difference('Good.count') do
      post goods_url, params: { good: { Expiration_date: @good.Expiration_date, address_id: @good.address_id, donation_id: @good.donation_id, good_type_id: @good.good_type_id, measure_unit_id: @good.measure_unit_id, quantity: @good.quantity } }
    end

    assert_redirected_to good_url(Good.last)
  end

  test "should show good" do
    get good_url(@good)
    assert_response :success
  end

  test "should get edit" do
    get edit_good_url(@good)
    assert_response :success
  end

  test "should update good" do
    patch good_url(@good), params: { good: { Expiration_date: @good.Expiration_date, address_id: @good.address_id, donation_id: @good.donation_id, good_type_id: @good.good_type_id, measure_unit_id: @good.measure_unit_id, quantity: @good.quantity } }
    assert_redirected_to good_url(@good)
  end

  test "should destroy good" do
    assert_difference('Good.count', -1) do
      delete good_url(@good)
    end

    assert_redirected_to goods_url
  end
end
