require "test_helper"

class HtmlPageControllerTest < ActionDispatch::IntegrationTest
  test "should get home" do
    get html_page_home_url
    assert_response :success
  end

  test "should get help" do
    get html_page_help_url
    assert_response :success
  end
end
