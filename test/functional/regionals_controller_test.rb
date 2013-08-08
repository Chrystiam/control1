require 'test_helper'

class RegionalsControllerTest < ActionController::TestCase
  setup do
    @regional = regionals(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:regionals)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create regional" do
    assert_difference('Regional.count') do
      post :create, regional: @regional.attributes
    end

    assert_redirected_to regional_path(assigns(:regional))
  end

  test "should show regional" do
    get :show, id: @regional
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @regional
    assert_response :success
  end

  test "should update regional" do
    put :update, id: @regional, regional: @regional.attributes
    assert_redirected_to regional_path(assigns(:regional))
  end

  test "should destroy regional" do
    assert_difference('Regional.count', -1) do
      delete :destroy, id: @regional
    end

    assert_redirected_to regionals_path
  end
end
