json.extract! comprobante, :id, :IdComprobante, :Nombre_Duenio, :Paciente, :Ruc, :Direccion, :Fecha_Registro, :Detalle_Producto, :Precio_Unitario, :Precio_Total, :Cantidad, :created_at, :updated_at
json.url comprobante_url(comprobante, format: :json)