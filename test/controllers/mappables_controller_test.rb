require 'test_helper'

class MappablesControllerTest < ActionController::TestCase
  setup do
    @mappable = mappables(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:mappables)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create mappable" do
    assert_difference('Mappable.count') do
      post :create, mappable: { address: @mappable.address }
    end

    assert_redirected_to mappable_path(assigns(:mappable))
  end

  test "should show mappable" do
    get :show, id: @mappable
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @mappable
    assert_response :success
  end

  test "should update mappable" do
    patch :update, id: @mappable, mappable: { address: @mappable.address }
    assert_redirected_to mappable_path(assigns(:mappable))
  end

  test "should destroy mappable" do
    assert_difference('Mappable.count', -1) do
      delete :destroy, id: @mappable
    end

    assert_redirected_to mappables_path
  end
end
