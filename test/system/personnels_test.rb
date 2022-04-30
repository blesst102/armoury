require "application_system_test_case"

class PersonnelsTest < ApplicationSystemTestCase
  setup do
    @personnel = personnels(:one)
  end

  test "visiting the index" do
    visit personnels_url
    assert_selector "h1", text: "Personnels"
  end

  test "creating a Personnel" do
    visit personnels_url
    click_on "New Personnel"

    fill_in "Commission date", with: @personnel.commission_date
    fill_in "Dob", with: @personnel.dob
    fill_in "Gender", with: @personnel.gender
    fill_in "Name", with: @personnel.name
    fill_in "Rank", with: @personnel.rank
    fill_in "Senioriry date", with: @personnel.senioriry_date
    fill_in "Svc number", with: @personnel.svc_number
    fill_in "Unit", with: @personnel.unit
    click_on "Create Personnel"

    assert_text "Personnel was successfully created"
    click_on "Back"
  end

  test "updating a Personnel" do
    visit personnels_url
    click_on "Edit", match: :first

    fill_in "Commission date", with: @personnel.commission_date
    fill_in "Dob", with: @personnel.dob
    fill_in "Gender", with: @personnel.gender
    fill_in "Name", with: @personnel.name
    fill_in "Rank", with: @personnel.rank
    fill_in "Senioriry date", with: @personnel.senioriry_date
    fill_in "Svc number", with: @personnel.svc_number
    fill_in "Unit", with: @personnel.unit
    click_on "Update Personnel"

    assert_text "Personnel was successfully updated"
    click_on "Back"
  end

  test "destroying a Personnel" do
    visit personnels_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Personnel was successfully destroyed"
  end
end
