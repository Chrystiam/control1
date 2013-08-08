require 'test_helper'

class PacumulationsControllerTest < ActionController::TestCase
  setup do
    @pacumulation = pacumulations(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:pacumulations)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create pacumulation" do
    assert_difference('Pacumulation.count') do
      post :create, pacumulation: { name: @pacumulation.name }
    end

    assert_redirected_to pacumulation_path(assigns(:pacumulation))
  end

  test "should show pacumulation" do
    get :show, id: @pacumulation
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @pacumulation
    assert_response :success
  end

  test "should update pacumulation" do
    put :update, id: @pacumulation, pacumulation: { name: @pacumulation.name }
    assert_redirected_to pacumulation_path(assigns(:pacumulation))
  end

  test "should destroy pacumulation" do
    assert_difference('Pacumulation.count', -1) do
      delete :destroy, id: @pacumulation
    end

    assert_redirected_to pacumulations_path
  end
end
