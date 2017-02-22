json.extract! servicio, :id, :IdServicio, :Nombre_Servicio, :Precio_Servicio, :CATALOGO_IdCatalogo, :created_at, :updated_at
json.url servicio_url(servicio, format: :json)