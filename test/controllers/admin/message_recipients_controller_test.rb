require 'test_helper'

class Admin::MessageRecipientsControllerTest < ActionController::TestCase
  setup do
    @admin_message_recipient = admin_message_recipients(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:admin_message_recipients)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create admin_message_recipient" do
    assert_difference('Admin::MessageRecipient.count') do
      post :create, admin_message_recipient: { msg_id: @admin_message_recipient.msg_id, recipient_id: @admin_message_recipient.recipient_id, recipient_type: @admin_message_recipient.recipient_type }
    end

    assert_redirected_to admin_message_recipient_path(assigns(:admin_message_recipient))
  end

  test "should show admin_message_recipient" do
    get :show, id: @admin_message_recipient
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @admin_message_recipient
    assert_response :success
  end

  test "should update admin_message_recipient" do
    patch :update, id: @admin_message_recipient, admin_message_recipient: { msg_id: @admin_message_recipient.msg_id, recipient_id: @admin_message_recipient.recipient_id, recipient_type: @admin_message_recipient.recipient_type }
    assert_redirected_to admin_message_recipient_path(assigns(:admin_message_recipient))
  end

  test "should destroy admin_message_recipient" do
    assert_difference('Admin::MessageRecipient.count', -1) do
      delete :destroy, id: @admin_message_recipient
    end

    assert_redirected_to admin_message_recipients_path
  end
end
