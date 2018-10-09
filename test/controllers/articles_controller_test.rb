require 'test_helper'

class ArticlesControllerTest < ActionDispatch::IntegrationTest
  test "Should get article home page" do
    get articles_url
    assert_response :success
    assert_select "title", "Blogs | Bec's Ruby and Rails Blog"
  end
end
