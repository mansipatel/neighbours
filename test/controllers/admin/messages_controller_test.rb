require 'test_helper'

class Admin::MessagesControllerTest < ActionController::TestCase
  setup do
    @admin_message = admin_messages(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:admin_messages)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create admin_message" do
    assert_difference('Admin::Message.count') do
      post :create, admin_message: { msg_by: @admin_message.msg_by, msg_text: @admin_message.msg_text, msg_time: @admin_message.msg_time, msg_title: @admin_message.msg_title }
    end

    assert_redirected_to admin_message_path(assigns(:admin_message))
  end

  test "should show admin_message" do
    get :show, id: @admin_message
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @admin_message
    assert_response :success
  end

  test "should update admin_message" do
    patch :update, id: @admin_message, admin_message: { msg_by: @admin_message.msg_by, msg_text: @admin_message.msg_text, msg_time: @admin_message.msg_time, msg_title: @admin_message.msg_title }
    assert_redirected_to admin_message_path(assigns(:admin_message))
  end

  test "should destroy admin_message" do
    assert_difference('Admin::Message.count', -1) do
      delete :destroy, id: @admin_message
    end

    assert_redirected_to admin_messages_path
  end
end
