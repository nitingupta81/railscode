require 'test_helper'

class ReadinglistsControllerTest < ActionController::TestCase
  setup do
    @readinglist = readinglists(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:readinglists)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create readinglist" do
    assert_difference('Readinglist.count') do
      post :create, readinglist: { author: @readinglist.author, booktitle: @readinglist.booktitle, published: @readinglist.published, read: @readinglist.read, year: @readinglist.year }
    end

    assert_redirected_to readinglist_path(assigns(:readinglist))
  end

  test "should show readinglist" do
    get :show, id: @readinglist
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @readinglist
    assert_response :success
  end

  test "should update readinglist" do
    patch :update, id: @readinglist, readinglist: { author: @readinglist.author, booktitle: @readinglist.booktitle, published: @readinglist.published, read: @readinglist.read, year: @readinglist.year }
    assert_redirected_to readinglist_path(assigns(:readinglist))
  end

  test "should destroy readinglist" do
    assert_difference('Readinglist.count', -1) do
      delete :destroy, id: @readinglist
    end

    assert_redirected_to readinglists_path
  end
end
