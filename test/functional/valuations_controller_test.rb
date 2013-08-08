require 'test_helper'

class ValuationsControllerTest < ActionController::TestCase
  setup do
    @valuation = valuations(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:valuations)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create valuation" do
    assert_difference('Valuation.count') do
      post :create, valuation: { good_max: @valuation.good_max, good_min: @valuation.good_min, level1: @valuation.level1, level2: @valuation.level2, level3: @valuation.level3, low_max: @valuation.low_max, low_min: @valuation.low_min, vuln_max: @valuation.vuln_max, vuln_min: @valuation.vuln_min }
    end

    assert_redirected_to valuation_path(assigns(:valuation))
  end

  test "should show valuation" do
    get :show, id: @valuation
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @valuation
    assert_response :success
  end

  test "should update valuation" do
    put :update, id: @valuation, valuation: { good_max: @valuation.good_max, good_min: @valuation.good_min, level1: @valuation.level1, level2: @valuation.level2, level3: @valuation.level3, low_max: @valuation.low_max, low_min: @valuation.low_min, vuln_max: @valuation.vuln_max, vuln_min: @valuation.vuln_min }
    assert_redirected_to valuation_path(assigns(:valuation))
  end

  test "should destroy valuation" do
    assert_difference('Valuation.count', -1) do
      delete :destroy, id: @valuation
    end

    assert_redirected_to valuations_path
  end
end
