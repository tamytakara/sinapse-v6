require 'test_helper'

class AdmissionExamsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @admission_exam = admission_exams(:one)
  end

  test "should get index" do
    get admission_exams_url
    assert_response :success
  end

  test "should get new" do
    get new_admission_exam_url
    assert_response :success
  end

  test "should create admission_exam" do
    assert_difference('AdmissionExam.count') do
      post admission_exams_url, params: { admission_exam: { desc: @admission_exam.desc, name: @admission_exam.name } }
    end

    assert_redirected_to admission_exam_url(AdmissionExam.last)
  end

  test "should show admission_exam" do
    get admission_exam_url(@admission_exam)
    assert_response :success
  end

  test "should get edit" do
    get edit_admission_exam_url(@admission_exam)
    assert_response :success
  end

  test "should update admission_exam" do
    patch admission_exam_url(@admission_exam), params: { admission_exam: { desc: @admission_exam.desc, name: @admission_exam.name } }
    assert_redirected_to admission_exam_url(@admission_exam)
  end

  test "should destroy admission_exam" do
    assert_difference('AdmissionExam.count', -1) do
      delete admission_exam_url(@admission_exam)
    end

    assert_redirected_to admission_exams_url
  end
end
