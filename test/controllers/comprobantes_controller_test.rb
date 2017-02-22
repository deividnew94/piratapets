require 'test_helper'

class ComprobantesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @comprobante = comprobantes(:one)
  end

  test "should get index" do
    get comprobantes_url
    assert_response :success
  end

  test "should get new" do
    get new_comprobante_url
    assert_response :success
  end

  test "should create comprobante" do
    assert_difference('Comprobante.count') do
      post comprobantes_url, params: { comprobante: { Cantidad: @comprobante.Cantidad, Detalle_Producto: @comprobante.Detalle_Producto, Direccion: @comprobante.Direccion, Fecha_Registro: @comprobante.Fecha_Registro, IdComprobante: @comprobante.IdComprobante, Nombre_Duenio: @comprobante.Nombre_Duenio, Paciente: @comprobante.Paciente, Precio_Total: @comprobante.Precio_Total, Precio_Unitario: @comprobante.Precio_Unitario, Ruc: @comprobante.Ruc } }
    end

    assert_redirected_to comprobante_url(Comprobante.last)
  end

  test "should show comprobante" do
    get comprobante_url(@comprobante)
    assert_response :success
  end

  test "should get edit" do
    get edit_comprobante_url(@comprobante)
    assert_response :success
  end

  test "should update comprobante" do
    patch comprobante_url(@comprobante), params: { comprobante: { Cantidad: @comprobante.Cantidad, Detalle_Producto: @comprobante.Detalle_Producto, Direccion: @comprobante.Direccion, Fecha_Registro: @comprobante.Fecha_Registro, IdComprobante: @comprobante.IdComprobante, Nombre_Duenio: @comprobante.Nombre_Duenio, Paciente: @comprobante.Paciente, Precio_Total: @comprobante.Precio_Total, Precio_Unitario: @comprobante.Precio_Unitario, Ruc: @comprobante.Ruc } }
    assert_redirected_to comprobante_url(@comprobante)
  end

  test "should destroy comprobante" do
    assert_difference('Comprobante.count', -1) do
      delete comprobante_url(@comprobante)
    end

    assert_redirected_to comprobantes_url
  end
end
