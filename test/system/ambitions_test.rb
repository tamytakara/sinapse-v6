require "application_system_test_case"

class AmbitionsTest < ApplicationSystemTestCase
  setup do
    @ambition = ambitions(:one)
  end

  test "visiting the index" do
    visit ambitions_url
    assert_selector "h1", text: "Ambitions"
  end

  test "creating a Ambition" do
    visit ambitions_url
    click_on "New Ambition"

    fill_in "Data", with: @ambition.data
    click_on "Create Ambition"

    assert_text "Ambition was successfully created"
    click_on "Back"
  end

  test "updating a Ambition" do
    visit ambitions_url
    click_on "Edit", match: :first

    fill_in "Data", with: @ambition.data
    click_on "Update Ambition"

    assert_text "Ambition was successfully updated"
    click_on "Back"
  end

  test "destroying a Ambition" do
    visit ambitions_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Ambition was successfully destroyed"
  end
end
