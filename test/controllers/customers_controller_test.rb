require 'test_helper'

class CustomersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @customer = customers(:one)
  end

  test "should get index" do
    get customers_url
    assert_response :success
  end

  test "should get new" do
    get new_customer_url
    assert_response :success
  end

  test "should create customer" do
    assert_difference('Customer.count') do
      post customers_url, params: { customer: { address: @customer.address, city: @customer.city, cnic: @customer.cnic, cnicimg1: @customer.cnicimg1, cnicimg2: @customer.cnicimg2, cost: @customer.cost, cusimg: @customer.cusimg, designation: @customer.designation, housestatus: @customer.housestatus, mobile: @customer.mobile, name: @customer.name, officaddress: @customer.officaddress, officmobile: @customer.officmobile, profession: @customer.profession, salary: @customer.salary } }
    end

    assert_redirected_to customer_url(Customer.last)
  end

  test "should show customer" do
    get customer_url(@customer)
    assert_response :success
  end

  test "should get edit" do
    get edit_customer_url(@customer)
    assert_response :success
  end

  test "should update customer" do
    patch customer_url(@customer), params: { customer: { address: @customer.address, city: @customer.city, cnic: @customer.cnic, cnicimg1: @customer.cnicimg1, cnicimg2: @customer.cnicimg2, cost: @customer.cost, cusimg: @customer.cusimg, designation: @customer.designation, housestatus: @customer.housestatus, mobile: @customer.mobile, name: @customer.name, officaddress: @customer.officaddress, officmobile: @customer.officmobile, profession: @customer.profession, salary: @customer.salary } }
    assert_redirected_to customer_url(@customer)
  end

  test "should destroy customer" do
    assert_difference('Customer.count', -1) do
      delete customer_url(@customer)
    end

    assert_redirected_to customers_url
  end
end
