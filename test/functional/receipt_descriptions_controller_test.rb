require 'test_helper'

class ReceiptDescriptionsControllerTest < ActionController::TestCase
  setup do
    @receipt_description = receipt_descriptions(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:receipt_descriptions)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create receipt_description" do
    assert_difference('ReceiptDescription.count') do
      post :create, receipt_description: { amount: @receipt_description.amount, garment_id: @receipt_description.garment_id, total: @receipt_description.total, total_value: @receipt_description.total_value, unity_value: @receipt_description.unity_value }
    end

    assert_redirected_to receipt_description_path(assigns(:receipt_description))
  end

  test "should show receipt_description" do
    get :show, id: @receipt_description
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @receipt_description
    assert_response :success
  end

  test "should update receipt_description" do
    put :update, id: @receipt_description, receipt_description: { amount: @receipt_description.amount, garment_id: @receipt_description.garment_id, total: @receipt_description.total, total_value: @receipt_description.total_value, unity_value: @receipt_description.unity_value }
    assert_redirected_to receipt_description_path(assigns(:receipt_description))
  end

  test "should destroy receipt_description" do
    assert_difference('ReceiptDescription.count', -1) do
      delete :destroy, id: @receipt_description
    end

    assert_redirected_to receipt_descriptions_path
  end
end
