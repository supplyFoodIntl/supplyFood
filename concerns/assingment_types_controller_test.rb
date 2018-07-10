require 'test_helper'

class assignmentTypesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @assignment_type = assignment_types(:one)
  end

  test "should get index" do
    get assignment_types_url
    assert_response :success
  end

  test "should get new" do
    get new_assignment_type_url
    assert_response :success
  end

  test "should create assignment_type" do
    assert_difference('assignmentType.count') do
      post assignment_types_url, params: { assignment_type: { description: @assignment_type.description, name: @assignment_type.name } }
    end

    assert_redirected_to assignment_type_url(assignmentType.last)
  end

  test "should show assignment_type" do
    get assignment_type_url(@assignment_type)
    assert_response :success
  end

  test "should get edit" do
    get edit_assignment_type_url(@assignment_type)
    assert_response :success
  end

  test "should update assignment_type" do
    patch assignment_type_url(@assignment_type), params: { assignment_type: { description: @assignment_type.description, name: @assignment_type.name } }
    assert_redirected_to assignment_type_url(@assignment_type)
  end

  test "should destroy assignment_type" do
    assert_difference('assignmentType.count', -1) do
      delete assignment_type_url(@assignment_type)
    end

    assert_redirected_to assignment_types_url
  end
end
