require 'test_helper'

class IndexceptionsControllerTest < ActionController::TestCase
  setup do
    @indexception = indexceptions(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:indexceptions)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create indexception" do
    assert_difference('Indexception.count') do
      post :create, indexception: { indicators: @indexception.indicators, nmnm: @indexception.nmnm, nmsm: @indexception.nmsm }
    end

    assert_redirected_to indexception_path(assigns(:indexception))
  end

  test "should show indexception" do
    get :show, id: @indexception
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @indexception
    assert_response :success
  end

  test "should update indexception" do
    put :update, id: @indexception, indexception: { indicators: @indexception.indicators, nmnm: @indexception.nmnm, nmsm: @indexception.nmsm }
    assert_redirected_to indexception_path(assigns(:indexception))
  end

  test "should destroy indexception" do
    assert_difference('Indexception.count', -1) do
      delete :destroy, id: @indexception
    end

    assert_redirected_to indexceptions_path
  end
end
