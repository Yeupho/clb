require 'test_helper'

class HeelsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @heel = heels(:one)
  end

  test "should get index" do
    get heels_url
    assert_response :success
  end

  test "should get new" do
    get new_heel_url
    assert_response :success
  end

  test "should create heel" do
    assert_difference('Heel.count') do
      post heels_url, params: { heel: { Height: @heel.Height } }
    end

    assert_redirected_to heel_url(Heel.last)
  end

  test "should show heel" do
    get heel_url(@heel)
    assert_response :success
  end

  test "should get edit" do
    get edit_heel_url(@heel)
    assert_response :success
  end

  test "should update heel" do
    patch heel_url(@heel), params: { heel: { Height: @heel.Height } }
    assert_redirected_to heel_url(@heel)
  end

  test "should destroy heel" do
    assert_difference('Heel.count', -1) do
      delete heel_url(@heel)
    end

    assert_redirected_to heels_url
  end
end
