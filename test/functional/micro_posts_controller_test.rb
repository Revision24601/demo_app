require 'test_helper'

class MicroPostsControllerTest < ActionController::TestCase
  setup do
    @micro_post = micro_posts(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:micro_posts)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create micro_post" do
    assert_difference('MicroPost.count') do
      post :create, micro_post: { content: @micro_post.content, user_id: @micro_post.user_id }
    end

    assert_redirected_to micro_post_path(assigns(:micro_post))
  end

  test "should show micro_post" do
    get :show, id: @micro_post
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @micro_post
    assert_response :success
  end

  test "should update micro_post" do
    put :update, id: @micro_post, micro_post: { content: @micro_post.content, user_id: @micro_post.user_id }
    assert_redirected_to micro_post_path(assigns(:micro_post))
  end

  test "should destroy micro_post" do
    assert_difference('MicroPost.count', -1) do
      delete :destroy, id: @micro_post
    end

    assert_redirected_to micro_posts_path
  end
end
