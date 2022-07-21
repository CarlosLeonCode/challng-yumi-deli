require "test_helper"

class CustomerAddressesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @customer_address = customer_addresses(:one)
  end

  test "should get index" do
    get customer_addresses_url
    assert_response :success
  end

  test "should get new" do
    get new_customer_address_url
    assert_response :success
  end

  test "should create customer_address" do
    assert_difference("CustomerAddress.count") do
      post customer_addresses_url, params: { customer_address: { city: @customer_address.city, country: @customer_address.country, customer_id: @customer_address.customer_id, number: @customer_address.number, state: @customer_address.state, street: @customer_address.street, zip_code: @customer_address.zip_code } }
    end

    assert_redirected_to customer_address_url(CustomerAddress.last)
  end

  test "should show customer_address" do
    get customer_address_url(@customer_address)
    assert_response :success
  end

  test "should get edit" do
    get edit_customer_address_url(@customer_address)
    assert_response :success
  end

  test "should update customer_address" do
    patch customer_address_url(@customer_address), params: { customer_address: { city: @customer_address.city, country: @customer_address.country, customer_id: @customer_address.customer_id, number: @customer_address.number, state: @customer_address.state, street: @customer_address.street, zip_code: @customer_address.zip_code } }
    assert_redirected_to customer_address_url(@customer_address)
  end

  test "should destroy customer_address" do
    assert_difference("CustomerAddress.count", -1) do
      delete customer_address_url(@customer_address)
    end

    assert_redirected_to customer_addresses_url
  end
end
