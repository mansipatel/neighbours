require 'test_helper'

class Admin::ThreadsControllerTest < ActionController::TestCase
  setup do
    @admin_thread = admin_threads(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:admin_threads)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create admin_thread" do
    assert_difference('Admin::Thread.count') do
      post :create, admin_thread: { msg_id: @admin_thread.msg_id, thread_by: @admin_thread.thread_by, thread_text: @admin_thread.thread_text, thread_time: @admin_thread.thread_time }
    end

    assert_redirected_to admin_thread_path(assigns(:admin_thread))
  end

  test "should show admin_thread" do
    get :show, id: @admin_thread
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @admin_thread
    assert_response :success
  end

  test "should update admin_thread" do
    patch :update, id: @admin_thread, admin_thread: { msg_id: @admin_thread.msg_id, thread_by: @admin_thread.thread_by, thread_text: @admin_thread.thread_text, thread_time: @admin_thread.thread_time }
    assert_redirected_to admin_thread_path(assigns(:admin_thread))
  end

  test "should destroy admin_thread" do
    assert_difference('Admin::Thread.count', -1) do
      delete :destroy, id: @admin_thread
    end

    assert_redirected_to admin_threads_path
  end
end
