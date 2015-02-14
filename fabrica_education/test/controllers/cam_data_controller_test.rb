require 'test_helper'

class CamDataControllerTest < ActionController::TestCase
  setup do
    @cam_datum = cam_data(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:cam_data)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create cam_datum" do
    assert_difference('CamDatum.count') do
      post :create, cam_datum: { datum_id: @cam_datum.datum_id, path_data: @cam_datum.path_data, print_time: @cam_datum.print_time, slicer_id: @cam_datum.slicer_id }
    end

    assert_redirected_to cam_datum_path(assigns(:cam_datum))
  end

  test "should show cam_datum" do
    get :show, id: @cam_datum
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @cam_datum
    assert_response :success
  end

  test "should update cam_datum" do
    patch :update, id: @cam_datum, cam_datum: { datum_id: @cam_datum.datum_id, path_data: @cam_datum.path_data, print_time: @cam_datum.print_time, slicer_id: @cam_datum.slicer_id }
    assert_redirected_to cam_datum_path(assigns(:cam_datum))
  end

  test "should destroy cam_datum" do
    assert_difference('CamDatum.count', -1) do
      delete :destroy, id: @cam_datum
    end

    assert_redirected_to cam_data_path
  end
end
