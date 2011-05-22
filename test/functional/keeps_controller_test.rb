require 'test_helper'

class KeepsControllerTest < ActionController::TestCase
  setup do
    @keep = keeps(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:keeps)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create keep" do
    assert_difference('Keep.count') do
      post :create, :keep => @keep.attributes
    end

    assert_redirected_to keep_path(assigns(:keep))
  end

  test "should show keep" do
    get :show, :id => @keep.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @keep.to_param
    assert_response :success
  end

  test "should update keep" do
    put :update, :id => @keep.to_param, :keep => @keep.attributes
    assert_redirected_to keep_path(assigns(:keep))
  end

  test "should destroy keep" do
    assert_difference('Keep.count', -1) do
      delete :destroy, :id => @keep.to_param
    end

    assert_redirected_to keeps_path
  end
end
