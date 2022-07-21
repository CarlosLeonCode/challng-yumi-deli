require "application_system_test_case"

class CustomerAddressesTest < ApplicationSystemTestCase
  setup do
    @customer_address = customer_addresses(:one)
  end

  test "visiting the index" do
    visit customer_addresses_url
    assert_selector "h1", text: "Customer addresses"
  end

  test "should create customer address" do
    visit customer_addresses_url
    click_on "New customer address"

    fill_in "City", with: @customer_address.city
    fill_in "Country", with: @customer_address.country
    fill_in "Customer", with: @customer_address.customer_id
    fill_in "Number", with: @customer_address.number
    fill_in "State", with: @customer_address.state
    fill_in "Street", with: @customer_address.street
    fill_in "Zip code", with: @customer_address.zip_code
    click_on "Create Customer address"

    assert_text "Customer address was successfully created"
    click_on "Back"
  end

  test "should update Customer address" do
    visit customer_address_url(@customer_address)
    click_on "Edit this customer address", match: :first

    fill_in "City", with: @customer_address.city
    fill_in "Country", with: @customer_address.country
    fill_in "Customer", with: @customer_address.customer_id
    fill_in "Number", with: @customer_address.number
    fill_in "State", with: @customer_address.state
    fill_in "Street", with: @customer_address.street
    fill_in "Zip code", with: @customer_address.zip_code
    click_on "Update Customer address"

    assert_text "Customer address was successfully updated"
    click_on "Back"
  end

  test "should destroy Customer address" do
    visit customer_address_url(@customer_address)
    click_on "Destroy this customer address", match: :first

    assert_text "Customer address was successfully destroyed"
  end
end
