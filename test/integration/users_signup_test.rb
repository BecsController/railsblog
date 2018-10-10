require 'test_helper'

class UsersSignupTest < ActionDispatch::IntegrationTest
  test 'invalid signup information' do
    get signup_path
    assert_no_difference 'User.count' do
      post users_path, params: { user: { name:  '',
                                         email: 'user@invalid',
                                         password:              'foo',
                                         password_confirmation: 'bar' } }
    end
    assert_template 'users/new'
  end
  # asserts that there is no difference to user count after attempting
  # incorrect signup

  test 'valid signup information' do
    get signup_path
    assert_difference 'User.count', 1 do
      post users_path, params: { user: { name:  'Example User',
                                         email: 'user@example.com',
                                         password:              'password',
                                         password_confirmation: 'password' } }
    end
    follow_redirect!
    assert_template 'users/show'
    assert_not flash.FILL_IN
  end
end

# asserts that the user count is increased by one when there is a
# functional signup
