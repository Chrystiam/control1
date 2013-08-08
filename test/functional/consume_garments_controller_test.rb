require 'test_helper'

class ConsumeGarmentsControllerTest < ActionController::TestCase
  setup do
    @consume_garment = consume_garments(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:consume_garments)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create consume_garment" do
    assert_difference('ConsumeGarment.count') do
      post :create, consume_garment: { cost: @consume_garment.cost, name: @consume_garment.name, quantity_consume: @consume_garment.quantity_consume }
    end

    assert_redirected_to consume_garment_path(assigns(:consume_garment))
  end

  test "should show consume_garment" do
    get :show, id: @consume_garment
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @consume_garment
    assert_response :success
  end

  test "should update consume_garment" do
    put :update, id: @consume_garment, consume_garment: { cost: @consume_garment.cost, name: @consume_garment.name, quantity_consume: @consume_garment.quantity_consume }
    assert_redirected_to consume_garment_path(assigns(:consume_garment))
  end

  test "should destroy consume_garment" do
    assert_difference('ConsumeGarment.count', -1) do
      delete :destroy, id: @consume_garment
    end

    assert_redirected_to consume_garments_path
  end
end
