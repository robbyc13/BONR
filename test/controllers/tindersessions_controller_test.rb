require 'test_helper'

class TindersessionsControllerTest < ActionController::TestCase
  setup do
    @tindersession = tindersessions(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:tindersessions)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create tindersession" do
    assert_difference('Tindersession.count') do
      post :create, tindersession: { datetime: @tindersession.datetime, max_set_of_dogs: @tindersession.max_set_of_dogs, number_of_dislikes_within_session: @tindersession.number_of_dislikes_within_session, number_of_hotdogs_within_session: @tindersession.number_of_hotdogs_within_session, number_of_likes_within_session: @tindersession.number_of_likes_within_session, uid: @tindersession.uid }
    end

    assert_redirected_to tindersession_path(assigns(:tindersession))
  end

  test "should show tindersession" do
    get :show, id: @tindersession
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @tindersession
    assert_response :success
  end

  test "should update tindersession" do
    patch :update, id: @tindersession, tindersession: { datetime: @tindersession.datetime, max_set_of_dogs: @tindersession.max_set_of_dogs, number_of_dislikes_within_session: @tindersession.number_of_dislikes_within_session, number_of_hotdogs_within_session: @tindersession.number_of_hotdogs_within_session, number_of_likes_within_session: @tindersession.number_of_likes_within_session, uid: @tindersession.uid }
    assert_redirected_to tindersession_path(assigns(:tindersession))
  end

  test "should destroy tindersession" do
    assert_difference('Tindersession.count', -1) do
      delete :destroy, id: @tindersession
    end

    assert_redirected_to tindersessions_path
  end
end
