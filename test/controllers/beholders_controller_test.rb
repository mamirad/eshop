require 'test_helper'

class BeholdersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @beholder = beholders(:one)
  end

  test "should get index" do
    get beholders_url
    assert_response :success
  end

  test "should get new" do
    get new_beholder_url
    assert_response :success
  end

  test "should create beholder" do
    assert_difference('Beholder.count') do
      post beholders_url, params: { beholder: { address1: @beholder.address1, address2: @beholder.address2, beholderimg1: @beholder.beholderimg1, beholderimg2: @beholder.beholderimg2, city1: @beholder.city1, city2: @beholder.city2, cnic2: @beholder.cnic2, cnic21: @beholder.cnic21, designation1: @beholder.designation1, designation2: @beholder.designation2, mobile1: @beholder.mobile1, mobile2: @beholder.mobile2, name1: @beholder.name1, name2: @beholder.name2, officaddress1: @beholder.officaddress1, officaddress2: @beholder.officaddress2, officmobile1: @beholder.officmobile1, officmobile2: @beholder.officmobile2, profession1: @beholder.profession1, profession2: @beholder.profession2, sale_id: @beholder.sale_id } }
    end

    assert_redirected_to beholder_url(Beholder.last)
  end

  test "should show beholder" do
    get beholder_url(@beholder)
    assert_response :success
  end

  test "should get edit" do
    get edit_beholder_url(@beholder)
    assert_response :success
  end

  test "should update beholder" do
    patch beholder_url(@beholder), params: { beholder: { address1: @beholder.address1, address2: @beholder.address2, beholderimg1: @beholder.beholderimg1, beholderimg2: @beholder.beholderimg2, city1: @beholder.city1, city2: @beholder.city2, cnic2: @beholder.cnic2, cnic21: @beholder.cnic21, designation1: @beholder.designation1, designation2: @beholder.designation2, mobile1: @beholder.mobile1, mobile2: @beholder.mobile2, name1: @beholder.name1, name2: @beholder.name2, officaddress1: @beholder.officaddress1, officaddress2: @beholder.officaddress2, officmobile1: @beholder.officmobile1, officmobile2: @beholder.officmobile2, profession1: @beholder.profession1, profession2: @beholder.profession2, sale_id: @beholder.sale_id } }
    assert_redirected_to beholder_url(@beholder)
  end

  test "should destroy beholder" do
    assert_difference('Beholder.count', -1) do
      delete beholder_url(@beholder)
    end

    assert_redirected_to beholders_url
  end
end
