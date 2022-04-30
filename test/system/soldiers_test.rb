require "application_system_test_case"

class SoldiersTest < ApplicationSystemTestCase
  setup do
    @soldier = soldiers(:one)
  end

  test "visiting the index" do
    visit soldiers_url
    assert_selector "h1", text: "Soldiers"
  end

  test "creating a Soldier" do
    visit soldiers_url
    click_on "New Soldier"

    fill_in "Dob", with: @soldier.dob
    fill_in "Gender", with: @soldier.gender
    fill_in "Name", with: @soldier.name
    fill_in "Rank", with: @soldier.rank
    fill_in "Svc number", with: @soldier.svc_number
    fill_in "Unit", with: @soldier.unit
    click_on "Create Soldier"

    assert_text "Soldier was successfully created"
    click_on "Back"
  end

  test "updating a Soldier" do
    visit soldiers_url
    click_on "Edit", match: :first

    fill_in "Dob", with: @soldier.dob
    fill_in "Gender", with: @soldier.gender
    fill_in "Name", with: @soldier.name
    fill_in "Rank", with: @soldier.rank
    fill_in "Svc number", with: @soldier.svc_number
    fill_in "Unit", with: @soldier.unit
    click_on "Update Soldier"

    assert_text "Soldier was successfully updated"
    click_on "Back"
  end

  test "destroying a Soldier" do
    visit soldiers_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Soldier was successfully destroyed"
  end
end
