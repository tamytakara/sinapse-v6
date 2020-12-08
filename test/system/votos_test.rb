require "application_system_test_case"

class VotosTest < ApplicationSystemTestCase
  setup do
    @voto = votos(:one)
  end

  test "visiting the index" do
    visit votos_url
    assert_selector "h1", text: "Votos"
  end

  test "creating a Voto" do
    visit votos_url
    click_on "New Voto"

    check "Positivo" if @voto.positivo
    click_on "Create Voto"

    assert_text "Voto was successfully created"
    click_on "Back"
  end

  test "updating a Voto" do
    visit votos_url
    click_on "Edit", match: :first

    check "Positivo" if @voto.positivo
    click_on "Update Voto"

    assert_text "Voto was successfully updated"
    click_on "Back"
  end

  test "destroying a Voto" do
    visit votos_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Voto was successfully destroyed"
  end
end
