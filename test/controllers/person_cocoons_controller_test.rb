require 'test_helper'

class PersonCocoonsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @person_cocoon = person_cocoons(:one)
  end

  test "should get index" do
    get person_cocoons_url
    assert_response :success
  end

  test "should get new" do
    get new_person_cocoon_url
    assert_response :success
  end

  test "should create person_cocoon" do
    assert_difference('PersonCocoon.count') do
      post person_cocoons_url, params: { person_cocoon: { ic: @person_cocoon.ic, ic_type_id: @person_cocoon.ic_type_id, name: @person_cocoon.name } }
    end

    assert_redirected_to person_cocoon_url(PersonCocoon.last)
  end

  test "should show person_cocoon" do
    get person_cocoon_url(@person_cocoon)
    assert_response :success
  end

  test "should get edit" do
    get edit_person_cocoon_url(@person_cocoon)
    assert_response :success
  end

  test "should update person_cocoon" do
    patch person_cocoon_url(@person_cocoon), params: { person_cocoon: { ic: @person_cocoon.ic, ic_type_id: @person_cocoon.ic_type_id, name: @person_cocoon.name } }
    assert_redirected_to person_cocoon_url(@person_cocoon)
  end

  test "should destroy person_cocoon" do
    assert_difference('PersonCocoon.count', -1) do
      delete person_cocoon_url(@person_cocoon)
    end

    assert_redirected_to person_cocoons_url
  end
end
