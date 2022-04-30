require "application_system_test_case"

class ArmrequestsTest < ApplicationSystemTestCase
  setup do
    @armrequest = armrequests(:one)
  end

  test "visiting the index" do
    visit armrequests_url
    assert_selector "h1", text: "Armrequests"
  end

  test "creating a Armrequest" do
    visit armrequests_url
    click_on "New Armrequest"

    fill_in "Arm", with: @armrequest.arm_id
    fill_in "Armtype", with: @armrequest.armtype
    fill_in "Personnel", with: @armrequest.personnel
    fill_in "Quantity", with: @armrequest.quantity
    fill_in "Request date", with: @armrequest.request_date
    fill_in "Return date", with: @armrequest.return_date
    click_on "Create Armrequest"

    assert_text "Armrequest was successfully created"
    click_on "Back"
  end

  test "updating a Armrequest" do
    visit armrequests_url
    click_on "Edit", match: :first

    fill_in "Arm", with: @armrequest.arm_id
    fill_in "Armtype", with: @armrequest.armtype
    fill_in "Personnel", with: @armrequest.personnel
    fill_in "Quantity", with: @armrequest.quantity
    fill_in "Request date", with: @armrequest.request_date
    fill_in "Return date", with: @armrequest.return_date
    click_on "Update Armrequest"

    assert_text "Armrequest was successfully updated"
    click_on "Back"
  end

  test "destroying a Armrequest" do
    visit armrequests_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Armrequest was successfully destroyed"
  end
end
