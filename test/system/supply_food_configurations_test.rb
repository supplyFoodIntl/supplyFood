require "application_system_test_case"

class SupplyFoodConfigurationsTest < ApplicationSystemTestCase
  setup do
    @supply_food_configuration = supply_food_configurations(:one)
  end

  test "visiting the index" do
    visit supply_food_configurations_url
    assert_selector "h1", text: "Supply Food Configurations"
  end

  test "creating a Supply food configuration" do
    visit supply_food_configurations_url
    click_on "New Supply Food Configuration"

    fill_in "Description", with: @supply_food_configuration.description
    fill_in "Html Configuration", with: @supply_food_configuration.html_configuration
    fill_in "Name", with: @supply_food_configuration.name
    fill_in "Value", with: @supply_food_configuration.value
    click_on "Create Supply food configuration"

    assert_text "Supply food configuration was successfully created"
    click_on "Back"
  end

  test "updating a Supply food configuration" do
    visit supply_food_configurations_url
    click_on "Edit", match: :first

    fill_in "Description", with: @supply_food_configuration.description
    fill_in "Html Configuration", with: @supply_food_configuration.html_configuration
    fill_in "Name", with: @supply_food_configuration.name
    fill_in "Value", with: @supply_food_configuration.value
    click_on "Update Supply food configuration"

    assert_text "Supply food configuration was successfully updated"
    click_on "Back"
  end

  test "destroying a Supply food configuration" do
    visit supply_food_configurations_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Supply food configuration was successfully destroyed"
  end
end
