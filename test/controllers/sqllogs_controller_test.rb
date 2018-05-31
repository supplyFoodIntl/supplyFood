require 'test_helper'

class SqllogsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @sqllog = sqllogs(:one)
  end

  test "should get index" do
    get sqllogs_url
    assert_response :success
  end

  test "should get new" do
    get new_sqllog_url
    assert_response :success
  end

  test "should create sqllog" do
    assert_difference('Sqllog.count') do
      post sqllogs_url, params: { sqllog: { sql_executed: @sqllog.sql_executed } }
    end

    assert_redirected_to sqllog_url(Sqllog.last)
  end

  test "should show sqllog" do
    get sqllog_url(@sqllog)
    assert_response :success
  end

  test "should get edit" do
    get edit_sqllog_url(@sqllog)
    assert_response :success
  end

  test "should update sqllog" do
    patch sqllog_url(@sqllog), params: { sqllog: { sql_executed: @sqllog.sql_executed } }
    assert_redirected_to sqllog_url(@sqllog)
  end

  test "should destroy sqllog" do
    assert_difference('Sqllog.count', -1) do
      delete sqllog_url(@sqllog)
    end

    assert_redirected_to sqllogs_url
  end
end
