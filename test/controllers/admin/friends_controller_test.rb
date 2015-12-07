require 'test_helper'

class Admin::FriendsControllerTest < ActionController::TestCase
  setup do
    @admin_friend = admin_friends(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:admin_friends)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create admin_friend" do
    assert_difference('Admin::Friend.count') do
      post :create, admin_friend: { receiver_id: @admin_friend.receiver_id, sender_id: @admin_friend.sender_id, status: @admin_friend.status }
    end

    assert_redirected_to admin_friend_path(assigns(:admin_friend))
  end

  test "should show admin_friend" do
    get :show, id: @admin_friend
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @admin_friend
    assert_response :success
  end

  test "should update admin_friend" do
    patch :update, id: @admin_friend, admin_friend: { receiver_id: @admin_friend.receiver_id, sender_id: @admin_friend.sender_id, status: @admin_friend.status }
    assert_redirected_to admin_friend_path(assigns(:admin_friend))
  end

  test "should destroy admin_friend" do
    assert_difference('Admin::Friend.count', -1) do
      delete :destroy, id: @admin_friend
    end

    assert_redirected_to admin_friends_path
  end
end
