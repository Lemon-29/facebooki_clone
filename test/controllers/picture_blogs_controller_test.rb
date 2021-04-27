require 'test_helper'

class PictureBlogsControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get picture_blogs_new_url
    assert_response :success
  end

  test "should get index" do
    get picture_blogs_index_url
    assert_response :success
  end

  test "should get show" do
    get picture_blogs_show_url
    assert_response :success
  end

  test "should get edit" do
    get picture_blogs_edit_url
    assert_response :success
  end

  test "should get confirm" do
    get picture_blogs_confirm_url
    assert_response :success
  end

end
