require 'test_helper'

class HistoriaControllerTest < ActionDispatch::IntegrationTest
  setup do
    @historium = historia(:one)
  end

  test "should get index" do
    get historia_url
    assert_response :success
  end

  test "should get new" do
    get new_historium_url
    assert_response :success
  end

  test "should create historium" do
    assert_difference('Historium.count') do
      post historia_url, params: { historium: { Antecedentes_Patologicos: @historium.Antecedentes_Patologicos, Diagnostico: @historium.Diagnostico, IdHistoria: @historium.IdHistoria, Nro_Atencion: @historium.Nro_Atencion, Receta: @historium.Receta, Sintomas: @historium.Sintomas } }
    end

    assert_redirected_to historium_url(Historium.last)
  end

  test "should show historium" do
    get historium_url(@historium)
    assert_response :success
  end

  test "should get edit" do
    get edit_historium_url(@historium)
    assert_response :success
  end

  test "should update historium" do
    patch historium_url(@historium), params: { historium: { Antecedentes_Patologicos: @historium.Antecedentes_Patologicos, Diagnostico: @historium.Diagnostico, IdHistoria: @historium.IdHistoria, Nro_Atencion: @historium.Nro_Atencion, Receta: @historium.Receta, Sintomas: @historium.Sintomas } }
    assert_redirected_to historium_url(@historium)
  end

  test "should destroy historium" do
    assert_difference('Historium.count', -1) do
      delete historium_url(@historium)
    end

    assert_redirected_to historia_url
  end
end
