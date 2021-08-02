require "test_helper"

class UsersSignupTest < ActionDispatch::IntegrationTest
  test "invalid signup information" do
    get signup_path
    assert_no_difference 'User.count' do
      post users_path, params: { user: { name: " ", email: "tony@examp", password: "abc", password_confirmation: "ab1"}}
    end

    assert_template 'users/new'
  end

  test "valid signup information" do
    get signup_path
    assert_difference 'User.count', 1 do
      post users_path, params: { user: { name: "Kori Reine", email: "kori@ex.com", password: "pass123", password_confirmation: "pass123" }}
    end
    follow_redirect!
    assert_template 'users/show'
  end
end
