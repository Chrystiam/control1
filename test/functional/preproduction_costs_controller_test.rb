require 'test_helper'

class PreproductionCostsControllerTest < ActionController::TestCase
  setup do
    @preproduction_cost = preproduction_costs(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:preproduction_costs)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create preproduction_cost" do
    assert_difference('PreproductionCost.count') do
      post :create, preproduction_cost: { labeling: @preproduction_cost.labeling, perforated_paper: @preproduction_cost.perforated_paper, plastic: @preproduction_cost.plastic, plotting: @preproduction_cost.plotting, printing: @preproduction_cost.printing, production_order_id: @preproduction_cost.production_order_id }
    end

    assert_redirected_to preproduction_cost_path(assigns(:preproduction_cost))
  end

  test "should show preproduction_cost" do
    get :show, id: @preproduction_cost
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @preproduction_cost
    assert_response :success
  end

  test "should update preproduction_cost" do
    put :update, id: @preproduction_cost, preproduction_cost: { labeling: @preproduction_cost.labeling, perforated_paper: @preproduction_cost.perforated_paper, plastic: @preproduction_cost.plastic, plotting: @preproduction_cost.plotting, printing: @preproduction_cost.printing, production_order_id: @preproduction_cost.production_order_id }
    assert_redirected_to preproduction_cost_path(assigns(:preproduction_cost))
  end

  test "should destroy preproduction_cost" do
    assert_difference('PreproductionCost.count', -1) do
      delete :destroy, id: @preproduction_cost
    end

    assert_redirected_to preproduction_costs_path
  end
end
