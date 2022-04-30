require "application_system_test_case"

class ArmsTest < ApplicationSystemTestCase
  setup do
    @arm = arms(:one)
  end

  test "visiting the index" do
    visit arms_url
    assert_selector "h1", text: "Arms"
  end

  test "creating a Arm" do
    visit arms_url
    click_on "New Arm"

    fill_in "Armname", with: @arm.armname
    fill_in "Armtype", with: @arm.armtype
    fill_in "Quantity", with: @arm.quantity
    fill_in "Serviceability", with: @arm.serviceability
    fill_in "Srlnum", with: @arm.srlnum
    click_on "Create Arm"

    assert_text "Arm was successfully created"
    click_on "Back"
  end

  test "updating a Arm" do
    visit arms_url
    click_on "Edit", match: :first

    fill_in "Armname", with: @arm.armname
    fill_in "Armtype", with: @arm.armtype
    fill_in "Quantity", with: @arm.quantity
    fill_in "Serviceability", with: @arm.serviceability
    fill_in "Srlnum", with: @arm.srlnum
    click_on "Update Arm"

    assert_text "Arm was successfully updated"
    click_on "Back"
  end

  test "destroying a Arm" do
    visit arms_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Arm was successfully destroyed"
  end
end
