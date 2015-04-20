require 'test_helper'

class PostsControllerTest < ActionController::TestCase
  setup do
    @post = posts(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:posts)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create post" do
    assert_difference('Post.count') do
      post :create, post: { catId: @post.catId, content: @post.content, date: @post.date, description: @post.description, link: @post.link, numComments: @post.numComments, status: @post.status, title: @post.title, userId: @post.userId, votes: @post.votes }
    end

    assert_redirected_to post_path(assigns(:post))
  end

  test "should show post" do
    get :show, id: @post
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @post
    assert_response :success
  end

  test "should update post" do
    patch :update, id: @post, post: { catId: @post.catId, content: @post.content, date: @post.date, description: @post.description, link: @post.link, numComments: @post.numComments, status: @post.status, title: @post.title, userId: @post.userId, votes: @post.votes }
    assert_redirected_to post_path(assigns(:post))
  end

  test "should destroy post" do
    assert_difference('Post.count', -1) do
      delete :destroy, id: @post
    end

    assert_redirected_to posts_path
  end
end
