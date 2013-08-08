require 'test_helper'

class ProductionsControllerTest < ActionController::TestCase
  setup do
    @production = productions(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:productions)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create production" do
    assert_difference('Production.count') do
      post :create, production: { a_amount: @production.a_amount, amount_in: @production.amount_in, amount_out: @production.amount_out, b_amount: @production.b_amount, date_in: @production.date_in, date_out: @production.date_out, garment_id: @production.garment_id, preparation_days: @production.preparation_days, remaining: @production.remaining, user_id: @production.user_id }
    end

    assert_redirected_to production_path(assigns(:production))
  end

  test "should show production" do
    get :show, id: @production
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @production
    assert_response :success
  end

  test "should update production" do
    put :update, id: @production, production: { a_amount: @production.a_amount, amount_in: @production.amount_in, amount_out: @production.amount_out, b_amount: @production.b_amount, date_in: @production.date_in, date_out: @production.date_out, garment_id: @production.garment_id, preparation_days: @production.preparation_days, remaining: @production.remaining, user_id: @production.user_id }
    assert_redirected_to production_path(assigns(:production))
  end

  test "should destroy production" do
    assert_difference('Production.count', -1) do
      delete :destroy, id: @production
    end

    assert_redirected_to productions_path
  end
end
