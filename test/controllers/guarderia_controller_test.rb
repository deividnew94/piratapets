require 'test_helper'

class GuarderiaControllerTest < ActionDispatch::IntegrationTest
  setup do
    @guarderium = guarderia(:one)
  end

  test "should get index" do
    get guarderia_url
    assert_response :success
  end

  test "should get new" do
    get new_guarderium_url
    assert_response :success
  end

  test "should create guarderium" do
    assert_difference('Guarderium.count') do
      post guarderia_url, params: { guarderium: { BUSQUEDA_CLIENTES_ADMINISTRADOR_IdAdministrador: @guarderium.BUSQUEDA_CLIENTES_ADMINISTRADOR_IdAdministrador, BUSQUEDA_CLIENTES_IdCliente: @guarderium.BUSQUEDA_CLIENTES_IdCliente, BUSQUEDA_IdBusqueda: @guarderium.BUSQUEDA_IdBusqueda, BUSQUEDA_PACIENTES_CLIENTES_ADMINISTRADOR_IdAdministrador: @guarderium.BUSQUEDA_PACIENTES_CLIENTES_ADMINISTRADOR_IdAdministrador, BUSQUEDA_PACIENTES_CLIENTES_IdCliente: @guarderium.BUSQUEDA_PACIENTES_CLIENTES_IdCliente, BUSQUEDA_PACIENTES_IdPacientes: @guarderium.BUSQUEDA_PACIENTES_IdPacientes, Codigo_Paciente: @guarderium.Codigo_Paciente, IdGuarderia: @guarderium.IdGuarderia, Nombre_Cliente: @guarderium.Nombre_Cliente, Nombre_Paciente: @guarderium.Nombre_Paciente, Tiempo_Estadia: @guarderium.Tiempo_Estadia } }
    end

    assert_redirected_to guarderium_url(Guarderium.last)
  end

  test "should show guarderium" do
    get guarderium_url(@guarderium)
    assert_response :success
  end

  test "should get edit" do
    get edit_guarderium_url(@guarderium)
    assert_response :success
  end

  test "should update guarderium" do
    patch guarderium_url(@guarderium), params: { guarderium: { BUSQUEDA_CLIENTES_ADMINISTRADOR_IdAdministrador: @guarderium.BUSQUEDA_CLIENTES_ADMINISTRADOR_IdAdministrador, BUSQUEDA_CLIENTES_IdCliente: @guarderium.BUSQUEDA_CLIENTES_IdCliente, BUSQUEDA_IdBusqueda: @guarderium.BUSQUEDA_IdBusqueda, BUSQUEDA_PACIENTES_CLIENTES_ADMINISTRADOR_IdAdministrador: @guarderium.BUSQUEDA_PACIENTES_CLIENTES_ADMINISTRADOR_IdAdministrador, BUSQUEDA_PACIENTES_CLIENTES_IdCliente: @guarderium.BUSQUEDA_PACIENTES_CLIENTES_IdCliente, BUSQUEDA_PACIENTES_IdPacientes: @guarderium.BUSQUEDA_PACIENTES_IdPacientes, Codigo_Paciente: @guarderium.Codigo_Paciente, IdGuarderia: @guarderium.IdGuarderia, Nombre_Cliente: @guarderium.Nombre_Cliente, Nombre_Paciente: @guarderium.Nombre_Paciente, Tiempo_Estadia: @guarderium.Tiempo_Estadia } }
    assert_redirected_to guarderium_url(@guarderium)
  end

  test "should destroy guarderium" do
    assert_difference('Guarderium.count', -1) do
      delete guarderium_url(@guarderium)
    end

    assert_redirected_to guarderia_url
  end
end
