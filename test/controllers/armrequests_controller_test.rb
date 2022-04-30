require "test_helper"

class ArmrequestsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @armrequest = armrequests(:one)
  end

  test "should get index" do
    get armrequests_url
    assert_response :success
  end

  test "should get new" do
    get new_armrequest_url
    assert_response :success
  end

  test "should create armrequest" do
    assert_difference('Armrequest.count') do
      post armrequests_url, params: { armrequest: { arm_id: @armrequest.arm_id, armtype: @armrequest.armtype, personnel: @armrequest.personnel, quantity: @armrequest.quantity, request_date: @armrequest.request_date, return_date: @armrequest.return_date } }
    end

    assert_redirected_to armrequest_url(Armrequest.last)
  end

  test "should show armrequest" do
    get armrequest_url(@armrequest)
    assert_response :success
  end

  test "should get edit" do
    get edit_armrequest_url(@armrequest)
    assert_response :success
  end

  test "should update armrequest" do
    patch armrequest_url(@armrequest), params: { armrequest: { arm_id: @armrequest.arm_id, armtype: @armrequest.armtype, personnel: @armrequest.personnel, quantity: @armrequest.quantity, request_date: @armrequest.request_date, return_date: @armrequest.return_date } }
    assert_redirected_to armrequest_url(@armrequest)
  end

  test "should destroy armrequest" do
    assert_difference('Armrequest.count', -1) do
      delete armrequest_url(@armrequest)
    end

    assert_redirected_to armrequests_url
  end
end
