require "test_helper"

class SoldiersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @soldier = soldiers(:one)
  end

  test "should get index" do
    get soldiers_url
    assert_response :success
  end

  test "should get new" do
    get new_soldier_url
    assert_response :success
  end

  test "should create soldier" do
    assert_difference('Soldier.count') do
      post soldiers_url, params: { soldier: { dob: @soldier.dob, gender: @soldier.gender, name: @soldier.name, rank: @soldier.rank, svc_number: @soldier.svc_number, unit: @soldier.unit } }
    end

    assert_redirected_to soldier_url(Soldier.last)
  end

  test "should show soldier" do
    get soldier_url(@soldier)
    assert_response :success
  end

  test "should get edit" do
    get edit_soldier_url(@soldier)
    assert_response :success
  end

  test "should update soldier" do
    patch soldier_url(@soldier), params: { soldier: { dob: @soldier.dob, gender: @soldier.gender, name: @soldier.name, rank: @soldier.rank, svc_number: @soldier.svc_number, unit: @soldier.unit } }
    assert_redirected_to soldier_url(@soldier)
  end

  test "should destroy soldier" do
    assert_difference('Soldier.count', -1) do
      delete soldier_url(@soldier)
    end

    assert_redirected_to soldiers_url
  end
end
