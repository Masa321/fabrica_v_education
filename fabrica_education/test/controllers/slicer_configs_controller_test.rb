require 'test_helper'

class SlicerConfigsControllerTest < ActionController::TestCase
  setup do
    @slicer_config = slicer_configs(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:slicer_configs)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create slicer_config" do
    assert_difference('SlicerConfig.count') do
      post :create, slicer_config: {  }
    end

    assert_redirected_to slicer_config_path(assigns(:slicer_config))
  end

  test "should show slicer_config" do
    get :show, id: @slicer_config
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @slicer_config
    assert_response :success
  end

  test "should update slicer_config" do
    patch :update, id: @slicer_config, slicer_config: {  }
    assert_redirected_to slicer_config_path(assigns(:slicer_config))
  end

  test "should destroy slicer_config" do
    assert_difference('SlicerConfig.count', -1) do
      delete :destroy, id: @slicer_config
    end

    assert_redirected_to slicer_configs_path
  end
end
