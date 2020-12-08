require 'test_helper'

class ProvasControllerTest < ActionDispatch::IntegrationTest
  setup do
    @prova = provas(:one)
  end

  test "should get index" do
    get provas_url
    assert_response :success
  end

  test "should get new" do
    get new_prova_url
    assert_response :success
  end

  test "should create prova" do
    assert_difference('Prova.count') do
      post provas_url, params: { prova: { desc: @prova.desc, name: @prova.name } }
    end

    assert_redirected_to prova_url(Prova.last)
  end

  test "should show prova" do
    get prova_url(@prova)
    assert_response :success
  end

  test "should get edit" do
    get edit_prova_url(@prova)
    assert_response :success
  end

  test "should update prova" do
    patch prova_url(@prova), params: { prova: { desc: @prova.desc, name: @prova.name } }
    assert_redirected_to prova_url(@prova)
  end

  test "should destroy prova" do
    assert_difference('Prova.count', -1) do
      delete prova_url(@prova)
    end

    assert_redirected_to provas_url
  end
end
