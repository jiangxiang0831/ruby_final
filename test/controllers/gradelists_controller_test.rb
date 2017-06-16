require 'test_helper'

class GradelistsControllerTest < ActionController::TestCase
  setup do
    @gradelist = gradelists(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:gradelists)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create gradelist" do
    assert_difference('Gradelist.count') do
      post :create, gradelist: { id: @gradelist.id, name: @gradelist.name, scr: @gradelist.scr }
    end

    assert_redirected_to gradelist_path(assigns(:gradelist))
  end

  test "should show gradelist" do
    get :show, id: @gradelist
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @gradelist
    assert_response :success
  end

  test "should update gradelist" do
    patch :update, id: @gradelist, gradelist: { id: @gradelist.id, name: @gradelist.name, scr: @gradelist.scr }
    assert_redirected_to gradelist_path(assigns(:gradelist))
  end

  test "should destroy gradelist" do
    assert_difference('Gradelist.count', -1) do
      delete :destroy, id: @gradelist
    end

    assert_redirected_to gradelists_path
  end
end
