require "application_system_test_case"

class BeholdersTest < ApplicationSystemTestCase
  setup do
    @beholder = beholders(:one)
  end

  test "visiting the index" do
    visit beholders_url
    assert_selector "h1", text: "Beholders"
  end

  test "creating a Beholder" do
    visit beholders_url
    click_on "New Beholder"

    fill_in "Address1", with: @beholder.address1
    fill_in "Address2", with: @beholder.address2
    fill_in "Beholderimg1", with: @beholder.beholderimg1
    fill_in "Beholderimg2", with: @beholder.beholderimg2
    fill_in "City1", with: @beholder.city1
    fill_in "City2", with: @beholder.city2
    fill_in "Cnic2", with: @beholder.cnic2
    fill_in "Cnic21", with: @beholder.cnic21
    fill_in "Designation1", with: @beholder.designation1
    fill_in "Designation2", with: @beholder.designation2
    fill_in "Mobile1", with: @beholder.mobile1
    fill_in "Mobile2", with: @beholder.mobile2
    fill_in "Name1", with: @beholder.name1
    fill_in "Name2", with: @beholder.name2
    fill_in "Officaddress1", with: @beholder.officaddress1
    fill_in "Officaddress2", with: @beholder.officaddress2
    fill_in "Officmobile1", with: @beholder.officmobile1
    fill_in "Officmobile2", with: @beholder.officmobile2
    fill_in "Profession1", with: @beholder.profession1
    fill_in "Profession2", with: @beholder.profession2
    fill_in "Sale", with: @beholder.sale_id
    click_on "Create Beholder"

    assert_text "Beholder was successfully created"
    click_on "Back"
  end

  test "updating a Beholder" do
    visit beholders_url
    click_on "Edit", match: :first

    fill_in "Address1", with: @beholder.address1
    fill_in "Address2", with: @beholder.address2
    fill_in "Beholderimg1", with: @beholder.beholderimg1
    fill_in "Beholderimg2", with: @beholder.beholderimg2
    fill_in "City1", with: @beholder.city1
    fill_in "City2", with: @beholder.city2
    fill_in "Cnic2", with: @beholder.cnic2
    fill_in "Cnic21", with: @beholder.cnic21
    fill_in "Designation1", with: @beholder.designation1
    fill_in "Designation2", with: @beholder.designation2
    fill_in "Mobile1", with: @beholder.mobile1
    fill_in "Mobile2", with: @beholder.mobile2
    fill_in "Name1", with: @beholder.name1
    fill_in "Name2", with: @beholder.name2
    fill_in "Officaddress1", with: @beholder.officaddress1
    fill_in "Officaddress2", with: @beholder.officaddress2
    fill_in "Officmobile1", with: @beholder.officmobile1
    fill_in "Officmobile2", with: @beholder.officmobile2
    fill_in "Profession1", with: @beholder.profession1
    fill_in "Profession2", with: @beholder.profession2
    fill_in "Sale", with: @beholder.sale_id
    click_on "Update Beholder"

    assert_text "Beholder was successfully updated"
    click_on "Back"
  end

  test "destroying a Beholder" do
    visit beholders_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Beholder was successfully destroyed"
  end
end
