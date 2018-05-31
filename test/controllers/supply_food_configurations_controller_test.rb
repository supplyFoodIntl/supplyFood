require 'test_helper'

class SupplyFoodConfigurationsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @supply_food_configuration = supply_food_configurations(:one)
  end

  test "should get index" do
    get supply_food_configurations_url
    assert_response :success
  end

  test "should get new" do
    get new_supply_food_configuration_url
    assert_response :success
  end

  test "should create supply_food_configuration" do
    assert_difference('SupplyFoodConfiguration.count') do
      post supply_food_configurations_url, params: { supply_food_configuration: { description: @supply_food_configuration.description, html_configuration: @supply_food_configuration.html_configuration, name: @supply_food_configuration.name, value: @supply_food_configuration.value } }
    end

    assert_redirected_to supply_food_configuration_url(SupplyFoodConfiguration.last)
  end

  test "should show supply_food_configuration" do
    get supply_food_configuration_url(@supply_food_configuration)
    assert_response :success
  end

  test "should get edit" do
    get edit_supply_food_configuration_url(@supply_food_configuration)
    assert_response :success
  end

  test "should update supply_food_configuration" do
    patch supply_food_configuration_url(@supply_food_configuration), params: { supply_food_configuration: { description: @supply_food_configuration.description, html_configuration: @supply_food_configuration.html_configuration, name: @supply_food_configuration.name, value: @supply_food_configuration.value } }
    assert_redirected_to supply_food_configuration_url(@supply_food_configuration)
  end

  test "should destroy supply_food_configuration" do
    assert_difference('SupplyFoodConfiguration.count', -1) do
      delete supply_food_configuration_url(@supply_food_configuration)
    end

    assert_redirected_to supply_food_configurations_url
  end
end
