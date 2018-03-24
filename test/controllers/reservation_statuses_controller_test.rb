require 'test_helper'

class ReservationStatusesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @reservation_status = reservation_statuses(:one)
  end

  test "should get index" do
    get reservation_statuses_url
    assert_response :success
  end

  test "should get new" do
    get new_reservation_status_url
    assert_response :success
  end

  test "should create reservation_status" do
    assert_difference('ReservationStatus.count') do
      post reservation_statuses_url, params: { reservation_status: { StatusName: @reservation_status.StatusName } }
    end

    assert_redirected_to reservation_status_url(ReservationStatus.last)
  end

  test "should show reservation_status" do
    get reservation_status_url(@reservation_status)
    assert_response :success
  end

  test "should get edit" do
    get edit_reservation_status_url(@reservation_status)
    assert_response :success
  end

  test "should update reservation_status" do
    patch reservation_status_url(@reservation_status), params: { reservation_status: { StatusName: @reservation_status.StatusName } }
    assert_redirected_to reservation_status_url(@reservation_status)
  end

  test "should destroy reservation_status" do
    assert_difference('ReservationStatus.count', -1) do
      delete reservation_status_url(@reservation_status)
    end

    assert_redirected_to reservation_statuses_url
  end
end
