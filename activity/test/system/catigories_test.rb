require "application_system_test_case"

class CatigoriesTest < ApplicationSystemTestCase
  setup do
    @catigory = catigories(:one)
  end

  test "visiting the index" do
    visit catigories_url
    assert_selector "h1", text: "Catigories"
  end

  test "should create catigory" do
    visit catigories_url
    click_on "New catigory"

    fill_in "Name", with: @catigory.name
    click_on "Create Catigory"

    assert_text "Catigory was successfully created"
    click_on "Back"
  end

  test "should update Catigory" do
    visit catigory_url(@catigory)
    click_on "Edit this catigory", match: :first

    fill_in "Name", with: @catigory.name
    click_on "Update Catigory"

    assert_text "Catigory was successfully updated"
    click_on "Back"
  end

  test "should destroy Catigory" do
    visit catigory_url(@catigory)
    click_on "Destroy this catigory", match: :first

    assert_text "Catigory was successfully destroyed"
  end
end
