require "application_system_test_case"

class AdmissionExamsTest < ApplicationSystemTestCase
  setup do
    @admission_exam = admission_exams(:one)
  end

  test "visiting the index" do
    visit admission_exams_url
    assert_selector "h1", text: "Admission Exams"
  end

  test "creating a Admission exam" do
    visit admission_exams_url
    click_on "New Admission Exam"

    fill_in "Desc", with: @admission_exam.desc
    fill_in "Name", with: @admission_exam.name
    click_on "Create Admission exam"

    assert_text "Admission exam was successfully created"
    click_on "Back"
  end

  test "updating a Admission exam" do
    visit admission_exams_url
    click_on "Edit", match: :first

    fill_in "Desc", with: @admission_exam.desc
    fill_in "Name", with: @admission_exam.name
    click_on "Update Admission exam"

    assert_text "Admission exam was successfully updated"
    click_on "Back"
  end

  test "destroying a Admission exam" do
    visit admission_exams_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Admission exam was successfully destroyed"
  end
end
