require 'test_helper'

class PublicplacetypesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @publicplacetype = publicplacetypes(:one)
  end

  test "should get index" do
    get publicplacetypes_url
    assert_response :success
  end

  test "should get new" do
    get new_publicplacetype_url
    assert_response :success
  end

  test "should create publicplacetype" do
    assert_difference('Publicplacetype.count') do
      post publicplacetypes_url, params: { publicplacetype: { create_time: @publicplacetype.create_time, dspublicplacetype: @publicplacetype.dspublicplacetype } }
    end

    assert_redirected_to publicplacetype_url(Publicplacetype.last)
  end

  test "should show publicplacetype" do
    get publicplacetype_url(@publicplacetype)
    assert_response :success
  end

  test "should get edit" do
    get edit_publicplacetype_url(@publicplacetype)
    assert_response :success
  end

  test "should update publicplacetype" do
    patch publicplacetype_url(@publicplacetype), params: { publicplacetype: { create_time: @publicplacetype.create_time, dspublicplacetype: @publicplacetype.dspublicplacetype } }
    assert_redirected_to publicplacetype_url(@publicplacetype)
  end

  test "should destroy publicplacetype" do
    assert_difference('Publicplacetype.count', -1) do
      delete publicplacetype_url(@publicplacetype)
    end

    assert_redirected_to publicplacetypes_url
  end
end
