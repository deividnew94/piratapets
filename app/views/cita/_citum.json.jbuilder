json.extract! citum, :id, :IdCita, :Paciente, :Duenio, :Telefono, :Direccion, :Fecha_Registro, :Vacunas, :CLIENTES_IdCliente, :CLIENTES_ADMINISTRADOR_IdAdministrador, :created_at, :updated_at
json.url citum_url(citum, format: :json)