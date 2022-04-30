require "test_helper"

class ArmsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @arm = arms(:one)
  end

  test "should get index" do
    get arms_url
    assert_response :success
  end

  test "should get new" do
    get new_arm_url
    assert_response :success
  end

  test "should create arm" do
    assert_difference('Arm.count') do
      post arms_url, params: { arm: { armname: @arm.armname, armtype: @arm.armtype, quantity: @arm.quantity, serviceability: @arm.serviceability, srlnum: @arm.srlnum } }
    end

    assert_redirected_to arm_url(Arm.last)
  end

  test "should show arm" do
    get arm_url(@arm)
    assert_response :success
  end

  test "should get edit" do
    get edit_arm_url(@arm)
    assert_response :success
  end

  test "should update arm" do
    patch arm_url(@arm), params: { arm: { armname: @arm.armname, armtype: @arm.armtype, quantity: @arm.quantity, serviceability: @arm.serviceability, srlnum: @arm.srlnum } }
    assert_redirected_to arm_url(@arm)
  end

  test "should destroy arm" do
    assert_difference('Arm.count', -1) do
      delete arm_url(@arm)
    end

    assert_redirected_to arms_url
  end
end
