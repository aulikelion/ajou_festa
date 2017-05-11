require 'test_helper'

class HomeControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
  end

  test "should get lineup" do
    get :lineup
    assert_response :success
  end

  test "should get timetable" do
    get :timetable
    assert_response :success
  end

  test "should get booth" do
    get :booth
    assert_response :success
  end

  test "should get map" do
    get :map
    assert_response :success
  end

end
