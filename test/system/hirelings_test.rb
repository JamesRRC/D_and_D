require "application_system_test_case"

class HirelingsTest < ApplicationSystemTestCase
  setup do
    @hireling = hirelings(:one)
  end

  test "visiting the index" do
    visit hirelings_url
    assert_selector "h1", text: "Hirelings"
  end

  test "creating a Hireling" do
    visit hirelings_url
    click_on "New Hireling"

    fill_in "Class", with: @hireling.class
    fill_in "Name", with: @hireling.name
    click_on "Create Hireling"

    assert_text "Hireling was successfully created"
    click_on "Back"
  end

  test "updating a Hireling" do
    visit hirelings_url
    click_on "Edit", match: :first

    fill_in "Class", with: @hireling.class
    fill_in "Name", with: @hireling.name
    click_on "Update Hireling"

    assert_text "Hireling was successfully updated"
    click_on "Back"
  end

  test "destroying a Hireling" do
    visit hirelings_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Hireling was successfully destroyed"
  end
end
