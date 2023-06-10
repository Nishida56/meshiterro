require "test_helper"

class HomesControllerTest < ActionDispatch::IntegrationTest
  test "should get sign_in" do
    get homes_sign_in_url
    assert_response :success
  end

  test "should get sign_up" do
    get homes_sign_up_url
    assert_response :success
  end

  test "should get post_images" do
    get homes_post_images_url
    assert_response :success
  end

  test "should get users" do
    get homes_users_url
    assert_response :success
  end

  test "should get new" do
    get homes_new_url
    assert_response :success
  end

  test "should get edit" do
    get homes_edit_url
    assert_response :success
  end
end
