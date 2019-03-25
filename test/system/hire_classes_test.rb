require "application_system_test_case"

class HireClassesTest < ApplicationSystemTestCase
  setup do
    @hire_class = hire_classes(:one)
  end

  test "visiting the index" do
    visit hire_classes_url
    assert_selector "h1", text: "Hire Classes"
  end

  test "creating a Hire class" do
    visit hire_classes_url
    click_on "New Hire Class"

    fill_in "Class description", with: @hire_class.class_description
    fill_in "Class name", with: @hire_class.class_name
    click_on "Create Hire class"

    assert_text "Hire class was successfully created"
    click_on "Back"
  end

  test "updating a Hire class" do
    visit hire_classes_url
    click_on "Edit", match: :first

    fill_in "Class description", with: @hire_class.class_description
    fill_in "Class name", with: @hire_class.class_name
    click_on "Update Hire class"

    assert_text "Hire class was successfully updated"
    click_on "Back"
  end

  test "destroying a Hire class" do
    visit hire_classes_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Hire class was successfully destroyed"
  end
end
