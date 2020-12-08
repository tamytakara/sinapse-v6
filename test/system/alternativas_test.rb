require "application_system_test_case"

class AlternativasTest < ApplicationSystemTestCase
  setup do
    @alternativa = alternativas(:one)
  end

  test "visiting the index" do
    visit alternativas_url
    assert_selector "h1", text: "Alternativas"
  end

  test "creating a Alternativa" do
    visit alternativas_url
    click_on "New Alternativa"

    fill_in "Desc", with: @alternativa.desc
    click_on "Create Alternativa"

    assert_text "Alternativa was successfully created"
    click_on "Back"
  end

  test "updating a Alternativa" do
    visit alternativas_url
    click_on "Edit", match: :first

    fill_in "Desc", with: @alternativa.desc
    click_on "Update Alternativa"

    assert_text "Alternativa was successfully updated"
    click_on "Back"
  end

  test "destroying a Alternativa" do
    visit alternativas_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Alternativa was successfully destroyed"
  end
end
