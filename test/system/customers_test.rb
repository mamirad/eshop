require "application_system_test_case"

class CustomersTest < ApplicationSystemTestCase
  setup do
    @customer = customers(:one)
  end

  test "visiting the index" do
    visit customers_url
    assert_selector "h1", text: "Customers"
  end

  test "creating a Customer" do
    visit customers_url
    click_on "New Customer"

    fill_in "Address", with: @customer.address
    fill_in "City", with: @customer.city
    fill_in "Cnic", with: @customer.cnic
    fill_in "Cnicimg1", with: @customer.cnicimg1
    fill_in "Cnicimg2", with: @customer.cnicimg2
    fill_in "Cost", with: @customer.cost
    fill_in "Cusimg", with: @customer.cusimg
    fill_in "Designation", with: @customer.designation
    fill_in "Housestatus", with: @customer.housestatus
    fill_in "Mobile", with: @customer.mobile
    fill_in "Name", with: @customer.name
    fill_in "Officaddress", with: @customer.officaddress
    fill_in "Officmobile", with: @customer.officmobile
    fill_in "Profession", with: @customer.profession
    fill_in "Salary", with: @customer.salary
    click_on "Create Customer"

    assert_text "Customer was successfully created"
    click_on "Back"
  end

  test "updating a Customer" do
    visit customers_url
    click_on "Edit", match: :first

    fill_in "Address", with: @customer.address
    fill_in "City", with: @customer.city
    fill_in "Cnic", with: @customer.cnic
    fill_in "Cnicimg1", with: @customer.cnicimg1
    fill_in "Cnicimg2", with: @customer.cnicimg2
    fill_in "Cost", with: @customer.cost
    fill_in "Cusimg", with: @customer.cusimg
    fill_in "Designation", with: @customer.designation
    fill_in "Housestatus", with: @customer.housestatus
    fill_in "Mobile", with: @customer.mobile
    fill_in "Name", with: @customer.name
    fill_in "Officaddress", with: @customer.officaddress
    fill_in "Officmobile", with: @customer.officmobile
    fill_in "Profession", with: @customer.profession
    fill_in "Salary", with: @customer.salary
    click_on "Update Customer"

    assert_text "Customer was successfully updated"
    click_on "Back"
  end

  test "destroying a Customer" do
    visit customers_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Customer was successfully destroyed"
  end
end
