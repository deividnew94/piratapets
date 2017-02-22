require 'test_helper'

class CampaniaControllerTest < ActionDispatch::IntegrationTest
  setup do
    @campanium = campania(:one)
  end

  test "should get index" do
    get campania_url
    assert_response :success
  end

  test "should get new" do
    get new_campanium_url
    assert_response :success
  end

  test "should create campanium" do
    assert_difference('Campanium.count') do
      post campania_url, params: { campanium: { IdCampania: @campanium.IdCampania, Nombre_Campania: @campanium.Nombre_Campania, Tiempo_Campania: @campanium.Tiempo_Campania } }
    end

    assert_redirected_to campanium_url(Campanium.last)
  end

  test "should show campanium" do
    get campanium_url(@campanium)
    assert_response :success
  end

  test "should get edit" do
    get edit_campanium_url(@campanium)
    assert_response :success
  end

  test "should update campanium" do
    patch campanium_url(@campanium), params: { campanium: { IdCampania: @campanium.IdCampania, Nombre_Campania: @campanium.Nombre_Campania, Tiempo_Campania: @campanium.Tiempo_Campania } }
    assert_redirected_to campanium_url(@campanium)
  end

  test "should destroy campanium" do
    assert_difference('Campanium.count', -1) do
      delete campanium_url(@campanium)
    end

    assert_redirected_to campania_url
  end
end
