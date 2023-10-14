require 'test_helper'

class ResourceNamesControllerTest < ActionController::TestCase
  setup do
    @resource_name = resource_names(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:resource_names)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create resource_name" do
    assert_difference('ResourceName.count') do
      post :create, resource_name: { product_id: @resource_name.product_id, product_name: @resource_name.product_name }
    end

    assert_redirected_to resource_name_path(assigns(:resource_name))
  end

  test "should show resource_name" do
    get :show, id: @resource_name
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @resource_name
    assert_response :success
  end

  test "should update resource_name" do
    patch :update, id: @resource_name, resource_name: { product_id: @resource_name.product_id, product_name: @resource_name.product_name }
    assert_redirected_to resource_name_path(assigns(:resource_name))
  end

  test "should destroy resource_name" do
    assert_difference('ResourceName.count', -1) do
      delete :destroy, id: @resource_name
    end

    assert_redirected_to resource_names_path
  end
end
