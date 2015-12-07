require 'test_helper'

class Admin::NeighboursControllerTest < ActionController::TestCase
  setup do
    @admin_neighbour = admin_neighbours(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:admin_neighbours)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create admin_neighbour" do
    assert_difference('Admin::Neighbour.count') do
      post :create, admin_neighbour: { neihgbour_id: @admin_neighbour.neihgbour_id, user_id: @admin_neighbour.user_id }
    end

    assert_redirected_to admin_neighbour_path(assigns(:admin_neighbour))
  end

  test "should show admin_neighbour" do
    get :show, id: @admin_neighbour
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @admin_neighbour
    assert_response :success
  end

  test "should update admin_neighbour" do
    patch :update, id: @admin_neighbour, admin_neighbour: { neihgbour_id: @admin_neighbour.neihgbour_id, user_id: @admin_neighbour.user_id }
    assert_redirected_to admin_neighbour_path(assigns(:admin_neighbour))
  end

  test "should destroy admin_neighbour" do
    assert_difference('Admin::Neighbour.count', -1) do
      delete :destroy, id: @admin_neighbour
    end

    assert_redirected_to admin_neighbours_path
  end
end
