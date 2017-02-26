require 'test_helper'

class LoginControllerTest < ActionDispatch::IntegrationTest
  test "should get administrador1" do
    get login_administrador1_url
    assert_response :success
  end

  test "should get administrador2" do
    get login_administrador2_url
    assert_response :success
  end

  test "should get administrador3" do
    get login_administrador3_url
    assert_response :success
  end

end
