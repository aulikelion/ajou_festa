require 'test_helper'

class BoothsControllerTest < ActionController::TestCase
  setup do
    @booth = booths(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:booths)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create booth" do
    assert_difference('Booth.count') do
      post :create, booth: { area: @booth.area, day: @booth.day, name: @booth.name, title: @booth.title, type: @booth.type }
    end

    assert_redirected_to booth_path(assigns(:booth))
  end

  test "should show booth" do
    get :show, id: @booth
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @booth
    assert_response :success
  end

  test "should update booth" do
    patch :update, id: @booth, booth: { area: @booth.area, day: @booth.day, name: @booth.name, title: @booth.title, type: @booth.type }
    assert_redirected_to booth_path(assigns(:booth))
  end

  test "should destroy booth" do
    assert_difference('Booth.count', -1) do
      delete :destroy, id: @booth
    end

    assert_redirected_to booths_path
  end
end
