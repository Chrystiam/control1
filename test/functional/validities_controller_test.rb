require 'test_helper'

class ValiditiesControllerTest < ActionController::TestCase
  setup do
    @validity = validities(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:validities)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create validity" do
    assert_difference('Validity.count') do
      post :create, validity: { month: @validity.month, name: @validity.name, year: @validity.year }
    end

    assert_redirected_to validity_path(assigns(:validity))
  end

  test "should show validity" do
    get :show, id: @validity
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @validity
    assert_response :success
  end

  test "should update validity" do
    put :update, id: @validity, validity: { month: @validity.month, name: @validity.name, year: @validity.year }
    assert_redirected_to validity_path(assigns(:validity))
  end

  test "should destroy validity" do
    assert_difference('Validity.count', -1) do
      delete :destroy, id: @validity
    end

    assert_redirected_to validities_path
  end
end
