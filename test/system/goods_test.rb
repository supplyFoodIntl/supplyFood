require "application_system_test_case"

class GoodsTest < ApplicationSystemTestCase
  setup do
    @good = goods(:one)
  end

  test "visiting the index" do
    visit goods_url
    assert_selector "h1", text: "Goods"
  end

  test "creating a Good" do
    visit goods_url
    click_on "New Good"

    fill_in "Expiration Date", with: @good.Expiration_date
    fill_in "Address", with: @good.address_id
    fill_in "Donation", with: @good.donation_id
    fill_in "Good Type", with: @good.good_type_id
    fill_in "Measure Unit", with: @good.measure_unit_id
    fill_in "Quantity", with: @good.quantity
    click_on "Create Good"

    assert_text "Good was successfully created"
    click_on "Back"
  end

  test "updating a Good" do
    visit goods_url
    click_on "Edit", match: :first

    fill_in "Expiration Date", with: @good.Expiration_date
    fill_in "Address", with: @good.address_id
    fill_in "Donation", with: @good.donation_id
    fill_in "Good Type", with: @good.good_type_id
    fill_in "Measure Unit", with: @good.measure_unit_id
    fill_in "Quantity", with: @good.quantity
    click_on "Update Good"

    assert_text "Good was successfully updated"
    click_on "Back"
  end

  test "destroying a Good" do
    visit goods_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Good was successfully destroyed"
  end
end
