require 'test_helper'

class SerachWordsControllerTest < ActionController::TestCase
  setup do
    @serach_word = serach_words(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:serach_words)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create serach_word" do
    assert_difference('SerachWord.count') do
      post :create, serach_word: { name: @serach_word.name }
    end

    assert_redirected_to serach_word_path(assigns(:serach_word))
  end

  test "should show serach_word" do
    get :show, id: @serach_word
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @serach_word
    assert_response :success
  end

  test "should update serach_word" do
    put :update, id: @serach_word, serach_word: { name: @serach_word.name }
    assert_redirected_to serach_word_path(assigns(:serach_word))
  end

  test "should destroy serach_word" do
    assert_difference('SerachWord.count', -1) do
      delete :destroy, id: @serach_word
    end

    assert_redirected_to serach_words_path
  end
end
