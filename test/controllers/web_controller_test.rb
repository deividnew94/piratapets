require 'test_helper'

class WebControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get web_index_url
    assert_response :success
  end

  test "should get administrador" do
    get web_administrador_url
    assert_response :success
  end

  test "should get usuario" do
    get web_usuario_url
    assert_response :success
  end

  test "should get doctor" do
    get web_doctor_url
    assert_response :success
  end

end
