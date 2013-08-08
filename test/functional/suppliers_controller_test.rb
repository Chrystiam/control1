require 'test_helper'

class SuppliersControllerTest < ActionController::TestCase
  setup do
    @supplier = suppliers(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:suppliers)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create supplier" do
    assert_difference('Supplier.count') do
      post :create, supplier: { adress: @supplier.adress, cell: @supplier.cell, city_id: @supplier.city_id, doc_id: @supplier.doc_id, identification: @supplier.identification, ocupation: @supplier.ocupation, phone: @supplier.phone, responsible: @supplier.responsible, social_reason: @supplier.social_reason }
    end

    assert_redirected_to supplier_path(assigns(:supplier))
  end

  test "should show supplier" do
    get :show, id: @supplier
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @supplier
    assert_response :success
  end

  test "should update supplier" do
    put :update, id: @supplier, supplier: { adress: @supplier.adress, cell: @supplier.cell, city_id: @supplier.city_id, doc_id: @supplier.doc_id, identification: @supplier.identification, ocupation: @supplier.ocupation, phone: @supplier.phone, responsible: @supplier.responsible, social_reason: @supplier.social_reason }
    assert_redirected_to supplier_path(assigns(:supplier))
  end

  test "should destroy supplier" do
    assert_difference('Supplier.count', -1) do
      delete :destroy, id: @supplier
    end

    assert_redirected_to suppliers_path
  end
end
