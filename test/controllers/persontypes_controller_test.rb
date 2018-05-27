require 'test_helper'

class PersontypesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @persontype = persontypes(:one)
  end

  test "should get index" do
    get persontypes_url
    assert_response :success
  end

  test "should get new" do
    get new_persontype_url
    assert_response :success
  end

  test "should create persontype" do
    assert_difference('Persontype.count') do
      post persontypes_url, params: { persontype: { create_time: @persontype.create_time, dspersontype: @persontype.dspersontype } }
    end

    assert_redirected_to persontype_url(Persontype.last)
  end

  test "should show persontype" do
    get persontype_url(@persontype)
    assert_response :success
  end

  test "should get edit" do
    get edit_persontype_url(@persontype)
    assert_response :success
  end

  test "should update persontype" do
    patch persontype_url(@persontype), params: { persontype: { create_time: @persontype.create_time, dspersontype: @persontype.dspersontype } }
    assert_redirected_to persontype_url(@persontype)
  end

  test "should destroy persontype" do
    assert_difference('Persontype.count', -1) do
      delete persontype_url(@persontype)
    end

    assert_redirected_to persontypes_url
  end
end
