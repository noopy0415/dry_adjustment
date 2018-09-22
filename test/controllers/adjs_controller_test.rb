require 'test_helper'

class AdjsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get adjs_index_url
    assert_response :success
  end

  test "should get show" do
    get adjs_show_url
    assert_response :success
  end

  test "should get edit" do
    get adjs_edit_url
    assert_response :success
  end

  test "should get new" do
    get adjs_new_url
    assert_response :success
  end

  test "should get create" do
    get adjs_create_url
    assert_response :success
  end

  test "should get destroy" do
    get adjs_destroy_url
    assert_response :success
  end

end
