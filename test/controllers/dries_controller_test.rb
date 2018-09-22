require 'test_helper'

class DriesControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get dries_index_url
    assert_response :success
  end

  test "should get show" do
    get dries_show_url
    assert_response :success
  end

  test "should get edit" do
    get dries_edit_url
    assert_response :success
  end

  test "should get new" do
    get dries_new_url
    assert_response :success
  end

  test "should get create" do
    get dries_create_url
    assert_response :success
  end

  test "should get destroy" do
    get dries_destroy_url
    assert_response :success
  end

end
