require 'test_helper'

class TacumulationsControllerTest < ActionController::TestCase
  setup do
    @tacumulation = tacumulations(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:tacumulations)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create tacumulation" do
    assert_difference('Tacumulation.count') do
      post :create, tacumulation: { name: @tacumulation.name }
    end

    assert_redirected_to tacumulation_path(assigns(:tacumulation))
  end

  test "should show tacumulation" do
    get :show, id: @tacumulation
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @tacumulation
    assert_response :success
  end

  test "should update tacumulation" do
    put :update, id: @tacumulation, tacumulation: { name: @tacumulation.name }
    assert_redirected_to tacumulation_path(assigns(:tacumulation))
  end

  test "should destroy tacumulation" do
    assert_difference('Tacumulation.count', -1) do
      delete :destroy, id: @tacumulation
    end

    assert_redirected_to tacumulations_path
  end
end
