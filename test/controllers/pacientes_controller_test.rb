require 'test_helper'

class PacientesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @paciente = pacientes(:one)
  end

  test "should get index" do
    get pacientes_url
    assert_response :success
  end

  test "should get new" do
    get new_paciente_url
    assert_response :success
  end

  test "should create paciente" do
    assert_difference('Paciente.count') do
      post pacientes_url, params: { paciente: { Actividad: @paciente.Actividad, CLIENTES_ADMINISTRADOR_IdAdministrador: @paciente.CLIENTES_ADMINISTRADOR_IdAdministrador, CLIENTES_IdCliente: @paciente.CLIENTES_IdCliente, Codigo_Paciente: @paciente.Codigo_Paciente, Especie: @paciente.Especie, Fecha_Nacimiento: @paciente.Fecha_Nacimiento, Genero: @paciente.Genero, HISTORIA_IdHistoria: @paciente.HISTORIA_IdHistoria, IdPacientes: @paciente.IdPacientes, Nombre_Duenio: @paciente.Nombre_Duenio, Peso: @paciente.Peso, Raza: @paciente.Raza, Tamanio: @paciente.Tamanio, Tipo_Sangre: @paciente.Tipo_Sangre } }
    end

    assert_redirected_to paciente_url(Paciente.last)
  end

  test "should show paciente" do
    get paciente_url(@paciente)
    assert_response :success
  end

  test "should get edit" do
    get edit_paciente_url(@paciente)
    assert_response :success
  end

  test "should update paciente" do
    patch paciente_url(@paciente), params: { paciente: { Actividad: @paciente.Actividad, CLIENTES_ADMINISTRADOR_IdAdministrador: @paciente.CLIENTES_ADMINISTRADOR_IdAdministrador, CLIENTES_IdCliente: @paciente.CLIENTES_IdCliente, Codigo_Paciente: @paciente.Codigo_Paciente, Especie: @paciente.Especie, Fecha_Nacimiento: @paciente.Fecha_Nacimiento, Genero: @paciente.Genero, HISTORIA_IdHistoria: @paciente.HISTORIA_IdHistoria, IdPacientes: @paciente.IdPacientes, Nombre_Duenio: @paciente.Nombre_Duenio, Peso: @paciente.Peso, Raza: @paciente.Raza, Tamanio: @paciente.Tamanio, Tipo_Sangre: @paciente.Tipo_Sangre } }
    assert_redirected_to paciente_url(@paciente)
  end

  test "should destroy paciente" do
    assert_difference('Paciente.count', -1) do
      delete paciente_url(@paciente)
    end

    assert_redirected_to pacientes_url
  end
end
