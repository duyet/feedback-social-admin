require 'test_helper'

class FeedbackcommentsControllerTest < ActionController::TestCase
  setup do
    @feedbackcomment = feedbackcomments(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:feedbackcomments)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create feedbackcomment" do
    assert_difference('Feedbackcomment.count') do
      post :create, feedbackcomment: { content: @feedbackcomment.content, created: @feedbackcomment.created, lastupdate: @feedbackcomment.lastupdate, user: @feedbackcomment.user }
    end

    assert_redirected_to feedbackcomment_path(assigns(:feedbackcomment))
  end

  test "should show feedbackcomment" do
    get :show, id: @feedbackcomment
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @feedbackcomment
    assert_response :success
  end

  test "should update feedbackcomment" do
    patch :update, id: @feedbackcomment, feedbackcomment: { content: @feedbackcomment.content, created: @feedbackcomment.created, lastupdate: @feedbackcomment.lastupdate, user: @feedbackcomment.user }
    assert_redirected_to feedbackcomment_path(assigns(:feedbackcomment))
  end

  test "should destroy feedbackcomment" do
    assert_difference('Feedbackcomment.count', -1) do
      delete :destroy, id: @feedbackcomment
    end

    assert_redirected_to feedbackcomments_path
  end
end
