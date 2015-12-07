require 'test_helper'

class Admin::NeighbourhoodsControllerTest < ActionController::TestCase
  setup do
    @admin_neighbourhood = admin_neighbourhoods(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:admin_neighbourhoods)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create admin_neighbourhood" do
    assert_difference('Admin::Neighbourhood.count') do
      post :create, admin_neighbourhood: { city: @admin_neighbourhood.city, hood_address: @admin_neighbourhood.hood_address, hood_description: @admin_neighbourhood.hood_description, state: @admin_neighbourhood.state, zip: @admin_neighbourhood.zip }
    end

    assert_redirected_to admin_neighbourhood_path(assigns(:admin_neighbourhood))
  end

  test "should show admin_neighbourhood" do
    get :show, id: @admin_neighbourhood
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @admin_neighbourhood
    assert_response :success
  end

  test "should update admin_neighbourhood" do
    patch :update, id: @admin_neighbourhood, admin_neighbourhood: { city: @admin_neighbourhood.city, hood_address: @admin_neighbourhood.hood_address, hood_description: @admin_neighbourhood.hood_description, state: @admin_neighbourhood.state, zip: @admin_neighbourhood.zip }
    assert_redirected_to admin_neighbourhood_path(assigns(:admin_neighbourhood))
  end

  test "should destroy admin_neighbourhood" do
    assert_difference('Admin::Neighbourhood.count', -1) do
      delete :destroy, id: @admin_neighbourhood
    end

    assert_redirected_to admin_neighbourhoods_path
  end
end
