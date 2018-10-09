require 'test_helper'

class SiteLayoutTest < ActionDispatch::IntegrationTest
  test "layout links" do
    get root_path
    assert_template 'welcome/index'
    assert_select "a[href=?]", root_path, count: 1
    assert_select "a[href=?]", signup_path
    assert_select "a[href=?]", login_path
    get root_path
    assert_select "h1", "Bec's Ruby and Rails Blog"
  end
end
