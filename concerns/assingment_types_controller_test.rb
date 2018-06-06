require 'test_helper'

class AssingmentTypesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @assingment_type = assingment_types(:one)
  end

  test "should get index" do
    get assingment_types_url
    assert_response :success
  end

  test "should get new" do
    get new_assingment_type_url
    assert_response :success
  end

  test "should create assingment_type" do
    assert_difference('AssingmentType.count') do
      post assingment_types_url, params: { assingment_type: { description: @assingment_type.description, name: @assingment_type.name } }
    end

    assert_redirected_to assingment_type_url(AssingmentType.last)
  end

  test "should show assingment_type" do
    get assingment_type_url(@assingment_type)
    assert_response :success
  end

  test "should get edit" do
    get edit_assingment_type_url(@assingment_type)
    assert_response :success
  end

  test "should update assingment_type" do
    patch assingment_type_url(@assingment_type), params: { assingment_type: { description: @assingment_type.description, name: @assingment_type.name } }
    assert_redirected_to assingment_type_url(@assingment_type)
  end

  test "should destroy assingment_type" do
    assert_difference('AssingmentType.count', -1) do
      delete assingment_type_url(@assingment_type)
    end

    assert_redirected_to assingment_types_url
  end
end
