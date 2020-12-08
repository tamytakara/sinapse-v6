require 'test_helper'

class AmbitionsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @ambition = ambitions(:one)
  end

  test "should get index" do
    get ambitions_url
    assert_response :success
  end

  test "should get new" do
    get new_ambition_url
    assert_response :success
  end

  test "should create ambition" do
    assert_difference('Ambition.count') do
      post ambitions_url, params: { ambition: { data: @ambition.data } }
    end

    assert_redirected_to ambition_url(Ambition.last)
  end

  test "should show ambition" do
    get ambition_url(@ambition)
    assert_response :success
  end

  test "should get edit" do
    get edit_ambition_url(@ambition)
    assert_response :success
  end

  test "should update ambition" do
    patch ambition_url(@ambition), params: { ambition: { data: @ambition.data } }
    assert_redirected_to ambition_url(@ambition)
  end

  test "should destroy ambition" do
    assert_difference('Ambition.count', -1) do
      delete ambition_url(@ambition)
    end

    assert_redirected_to ambitions_url
  end
end
