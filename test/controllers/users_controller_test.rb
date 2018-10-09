require 'test_helper'

class UsersControllerTest < ActionDispatch::IntegrationTest
  test "Should get signup" do
    get signup_path
    assert_response :success
  end

  test "Should get login page" do
    get login_path
    assert_response :success
  end
end
