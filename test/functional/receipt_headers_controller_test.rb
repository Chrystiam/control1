require 'test_helper'

class ReceiptHeadersControllerTest < ActionController::TestCase
  setup do
    @receipt_header = receipt_headers(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:receipt_headers)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create receipt_header" do
    assert_difference('ReceiptHeader.count') do
      post :create, receipt_header: { adress: @receipt_header.adress, city_id: @receipt_header.city_id, client: @receipt_header.client, identification: @receipt_header.identification, phone: @receipt_header.phone }
    end

    assert_redirected_to receipt_header_path(assigns(:receipt_header))
  end

  test "should show receipt_header" do
    get :show, id: @receipt_header
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @receipt_header
    assert_response :success
  end

  test "should update receipt_header" do
    put :update, id: @receipt_header, receipt_header: { adress: @receipt_header.adress, city_id: @receipt_header.city_id, client: @receipt_header.client, identification: @receipt_header.identification, phone: @receipt_header.phone }
    assert_redirected_to receipt_header_path(assigns(:receipt_header))
  end

  test "should destroy receipt_header" do
    assert_difference('ReceiptHeader.count', -1) do
      delete :destroy, id: @receipt_header
    end

    assert_redirected_to receipt_headers_path
  end
end
