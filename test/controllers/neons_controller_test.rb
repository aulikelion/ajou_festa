require 'test_helper'

class NeonsControllerTest < ActionController::TestCase
  setup do
    @neon = neons(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:neons)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create neon" do
    assert_difference('Neon.count') do
      post :create, neon: { message: @neon.message }
    end

    assert_redirected_to neon_path(assigns(:neon))
  end

  test "should show neon" do
    get :show, id: @neon
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @neon
    assert_response :success
  end

  test "should update neon" do
    patch :update, id: @neon, neon: { message: @neon.message }
    assert_redirected_to neon_path(assigns(:neon))
  end

  test "should destroy neon" do
    assert_difference('Neon.count', -1) do
      delete :destroy, id: @neon
    end

    assert_redirected_to neons_path
  end
end
