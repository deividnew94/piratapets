json.extract! cliente, :id, :IdCliente, :Nombre, :Apellido_Paterno, :Apellido_Materno, :Correo_Electronico, :Direccion, :Telefono_Casa, :Telefono_Celular, :ADMINISTRADOR_IdAdministrador, :HISTORIA_IdHistoria, :created_at, :updated_at
json.url cliente_url(cliente, format: :json)