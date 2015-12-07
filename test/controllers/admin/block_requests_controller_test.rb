require 'test_helper'

class Admin::BlockRequestsControllerTest < ActionController::TestCase
  setup do
    @admin_block_request = admin_block_requests(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:admin_block_requests)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create admin_block_request" do
    assert_difference('Admin::BlockRequest.count') do
      post :create, admin_block_request: { approver1_id: @admin_block_request.approver1_id, approver2_id: @admin_block_request.approver2_id, approver3_id: @admin_block_request.approver3_id, requester_id: @admin_block_request.requester_id }
    end

    assert_redirected_to admin_block_request_path(assigns(:admin_block_request))
  end

  test "should show admin_block_request" do
    get :show, id: @admin_block_request
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @admin_block_request
    assert_response :success
  end

  test "should update admin_block_request" do
    patch :update, id: @admin_block_request, admin_block_request: { approver1_id: @admin_block_request.approver1_id, approver2_id: @admin_block_request.approver2_id, approver3_id: @admin_block_request.approver3_id, requester_id: @admin_block_request.requester_id }
    assert_redirected_to admin_block_request_path(assigns(:admin_block_request))
  end

  test "should destroy admin_block_request" do
    assert_difference('Admin::BlockRequest.count', -1) do
      delete :destroy, id: @admin_block_request
    end

    assert_redirected_to admin_block_requests_path
  end
end
