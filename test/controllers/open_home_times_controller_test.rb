require 'test_helper'

class OpenHomeTimesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @open_home_time = open_home_times(:one)
  end

  test "should get index" do
    get open_home_times_url
    assert_response :success
  end

  test "should get new" do
    get new_open_home_time_url
    assert_response :success
  end

  test "should create open_home_time" do
    assert_difference('OpenHomeTime.count') do
      post open_home_times_url, params: { open_home_time: {  } }
    end

    assert_redirected_to open_home_time_url(OpenHomeTime.last)
  end

  test "should show open_home_time" do
    get open_home_time_url(@open_home_time)
    assert_response :success
  end

  test "should get edit" do
    get edit_open_home_time_url(@open_home_time)
    assert_response :success
  end

  test "should update open_home_time" do
    patch open_home_time_url(@open_home_time), params: { open_home_time: {  } }
    assert_redirected_to open_home_time_url(@open_home_time)
  end

  test "should destroy open_home_time" do
    assert_difference('OpenHomeTime.count', -1) do
      delete open_home_time_url(@open_home_time)
    end

    assert_redirected_to open_home_times_url
  end
end
