require "application_system_test_case"

class MateriaTest < ApplicationSystemTestCase
  setup do
    @materium = materia(:one)
  end

  test "visiting the index" do
    visit materia_url
    assert_selector "h1", text: "Materia"
  end

  test "creating a Materium" do
    visit materia_url
    click_on "New Materium"

    fill_in "Desc", with: @materium.desc
    fill_in "Name", with: @materium.name
    click_on "Create Materium"

    assert_text "Materium was successfully created"
    click_on "Back"
  end

  test "updating a Materium" do
    visit materia_url
    click_on "Edit", match: :first

    fill_in "Desc", with: @materium.desc
    fill_in "Name", with: @materium.name
    click_on "Update Materium"

    assert_text "Materium was successfully updated"
    click_on "Back"
  end

  test "destroying a Materium" do
    visit materia_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Materium was successfully destroyed"
  end
end
