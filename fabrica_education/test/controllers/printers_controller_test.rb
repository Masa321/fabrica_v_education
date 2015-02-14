require 'test_helper'

class PrintersControllerTest < ActionController::TestCase
  setup do
    @printer = printers(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:printers)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create printer" do
    assert_difference('Printer.count') do
      post :create, printer: { condition: @printer.condition, filament_color: @printer.filament_color, name: @printer.name, photo: @printer.photo, print_area_x: @printer.print_area_x, print_area_y: @printer.print_area_y, print_area_z: @printer.print_area_z, printer_type: @printer.printer_type, slice_h: @printer.slice_h, slice_l: @printer.slice_l, slice_m: @printer.slice_m }
    end

    assert_redirected_to printer_path(assigns(:printer))
  end

  test "should show printer" do
    get :show, id: @printer
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @printer
    assert_response :success
  end

  test "should update printer" do
    patch :update, id: @printer, printer: { condition: @printer.condition, filament_color: @printer.filament_color, name: @printer.name, photo: @printer.photo, print_area_x: @printer.print_area_x, print_area_y: @printer.print_area_y, print_area_z: @printer.print_area_z, printer_type: @printer.printer_type, slice_h: @printer.slice_h, slice_l: @printer.slice_l, slice_m: @printer.slice_m }
    assert_redirected_to printer_path(assigns(:printer))
  end

  test "should destroy printer" do
    assert_difference('Printer.count', -1) do
      delete :destroy, id: @printer
    end

    assert_redirected_to printers_path
  end
end
