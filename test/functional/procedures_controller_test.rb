require 'test_helper'

class ProceduresControllerTest < ActionController::TestCase
  setup do
    @procedure = procedures(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:procedures)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create procedure" do
    assert_difference('Procedure.count') do
      post :create, procedure: { assembly_delivery: @procedure.assembly_delivery, assembly_end: @procedure.assembly_end, assembly_real: @procedure.assembly_real, cutting_delivery: @procedure.cutting_delivery, cutting_end: @procedure.cutting_end, cutting_real: @procedure.cutting_real, embroidery_delivery: @procedure.embroidery_delivery, embroidery_end: @procedure.embroidery_end, embroidery_real: @procedure.embroidery_real, outline_delivery: @procedure.outline_delivery, outline_end: @procedure.outline_end, outline_real: @procedure.outline_real, print_delivery: @procedure.print_delivery, print_end: @procedure.print_end, print_real: @procedure.print_real, tinte_delivery: @procedure.tinte_delivery, tinte_end: @procedure.tinte_end, tinte_real: @procedure.tinte_real, washing_delivery: @procedure.washing_delivery, washing_end: @procedure.washing_end, washing_real: @procedure.washing_real }
    end

    assert_redirected_to procedure_path(assigns(:procedure))
  end

  test "should show procedure" do
    get :show, id: @procedure
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @procedure
    assert_response :success
  end

  test "should update procedure" do
    put :update, id: @procedure, procedure: { assembly_delivery: @procedure.assembly_delivery, assembly_end: @procedure.assembly_end, assembly_real: @procedure.assembly_real, cutting_delivery: @procedure.cutting_delivery, cutting_end: @procedure.cutting_end, cutting_real: @procedure.cutting_real, embroidery_delivery: @procedure.embroidery_delivery, embroidery_end: @procedure.embroidery_end, embroidery_real: @procedure.embroidery_real, outline_delivery: @procedure.outline_delivery, outline_end: @procedure.outline_end, outline_real: @procedure.outline_real, print_delivery: @procedure.print_delivery, print_end: @procedure.print_end, print_real: @procedure.print_real, tinte_delivery: @procedure.tinte_delivery, tinte_end: @procedure.tinte_end, tinte_real: @procedure.tinte_real, washing_delivery: @procedure.washing_delivery, washing_end: @procedure.washing_end, washing_real: @procedure.washing_real }
    assert_redirected_to procedure_path(assigns(:procedure))
  end

  test "should destroy procedure" do
    assert_difference('Procedure.count', -1) do
      delete :destroy, id: @procedure
    end

    assert_redirected_to procedures_path
  end
end
