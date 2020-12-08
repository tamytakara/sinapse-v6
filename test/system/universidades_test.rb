require "application_system_test_case"

class UniversidadesTest < ApplicationSystemTestCase
  setup do
    @universidade = universidades(:one)
  end

  test "visiting the index" do
    visit universidades_url
    assert_selector "h1", text: "Universidades"
  end

  test "creating a Universidade" do
    visit universidades_url
    click_on "New Universidade"

    fill_in "Name", with: @universidade.name
    click_on "Create Universidade"

    assert_text "Universidade was successfully created"
    click_on "Back"
  end

  test "updating a Universidade" do
    visit universidades_url
    click_on "Edit", match: :first

    fill_in "Name", with: @universidade.name
    click_on "Update Universidade"

    assert_text "Universidade was successfully updated"
    click_on "Back"
  end

  test "destroying a Universidade" do
    visit universidades_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Universidade was successfully destroyed"
  end
end
